#!/usr/bin/env python3
# dhcp-leases-textfile.py
#
# Writes DHCP client names as a Prometheus textfile for node-exporter:
#   dhcp_lease_info{ip="10.10.91.142",hostname="DESKTOP-HKE05KI",mac="..",source="lease|static"} 1
#
# tnwks-ops joins this to monitoring/flow-collector's per-client WAN counters
# (recording rule wan:client_name), so WAN alerts show hostnames, not IPs.
# One series per IP: the active lease's client hostname, else the
# static-mapping name. Run every minute by `system task-scheduler`.

import json
import os
import subprocess
import tempfile

OUT_DIR = "/config/node-exporter"
OUT_FILE = os.path.join(OUT_DIR, "dhcp.prom")


def esc(v):
    return str(v).replace("\\", "\\\\").replace('"', '\\"').replace("\n", " ")


def leases():
    raw = subprocess.run(
        ["/usr/libexec/vyos/op_mode/dhcp.py", "show_server_leases", "--family", "inet", "--raw"],
        capture_output=True, text=True, timeout=30, check=True).stdout
    rows = json.loads(raw or "[]")
    best = {}
    for r in rows:
        if r.get("state") != "active" or not r.get("ip"):
            continue
        cur = best.get(r["ip"])
        if cur is None or (r.get("start") or 0) > (cur.get("start") or 0):
            best[r["ip"]] = r
    return best


def static_mappings():
    out = {}
    try:
        from vyos.configquery import ConfigTreeQuery
        cfg = ConfigTreeQuery().get_config_dict(
            ["service", "dhcp-server"], key_mangling=("-", "_"), get_first_key=True)
    except Exception:
        return out
    for net in (cfg.get("shared_network_name") or {}).values():
        for subnet in (net.get("subnet") or {}).values():
            for name, m in (subnet.get("static_mapping") or {}).items():
                ip = m.get("ip_address")
                if ip:
                    out[ip] = (name, m.get("mac") or m.get("mac_address") or "")
    return out


def main():
    lines = [
        "# HELP dhcp_lease_info DHCP client name per IP (1 = present).",
        "# TYPE dhcp_lease_info gauge",
    ]
    statics = static_mappings()
    seen = set()
    for ip, r in sorted(leases().items()):
        name = (r.get("hostname") or "").strip()
        source = "lease"
        if not name and ip in statics:
            name, source = statics[ip][0], "static"
        if not name:
            continue
        seen.add(ip)
        lines.append(f'dhcp_lease_info{{ip="{esc(ip)}",hostname="{esc(name)}",'
                     f'mac="{esc(r.get("mac") or "")}",source="{source}"}} 1')
    for ip, (name, mac) in sorted(statics.items()):
        if ip not in seen:
            lines.append(f'dhcp_lease_info{{ip="{esc(ip)}",hostname="{esc(name)}",'
                         f'mac="{esc(mac)}",source="static"}} 1')
    os.makedirs(OUT_DIR, exist_ok=True)
    fd, tmp = tempfile.mkstemp(dir=OUT_DIR, prefix=".dhcp.prom.")
    with os.fdopen(fd, "w") as fh:
        fh.write("\n".join(lines) + "\n")
    os.chmod(tmp, 0o644)
    os.replace(tmp, OUT_FILE)


if __name__ == "__main__":
    main()
