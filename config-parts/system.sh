#!/bin/vbash

set system domain-name 'tnwks.local'
set system host-name 'sce-vyos01'

set system ipv6 disable-forwarding

# set system login user vyos authentication public-keys ios key 'AAAAC3NzaC1lZDI1NTE5AAAAINllIKQjpMumg9CCz1HIEsti/cN6MpUWZbCeLiLjKH2W'
# set system login user vyos authentication public-keys ios type 'ssh-ed25519'
# set system login user vyos authentication public-keys personal key 'AAAAC3NzaC1lZDI1NTE5AAAAIMyYn4k4V+myBBl79Nt3t7EZugvz9A+d3ZbKyaP1w7J5'
# set system login user vyos authentication public-keys personal type 'ssh-ed25519'


set system login user ${SSH_VYOS_USERNAME} authentication public-keys personal key 'AAAAB3NzaC1yc2EAAAADAQABAAABgQDQ3xsijUu7JGOG+GVc4FffLRqLF4gWDRT0EWofYinTFGkzxJFhGoS76bbjCU7nUGun5YQbRS7QcWkVKfKBne/ydtc9Mm1OZ/7N3a03TNPnXeFsiNgXfrC8LQN/OKrqreXqMhnj2Hc7o/KTHR/Ui8OE1uDI3mMcETWb1hQJRaLKKMjP5n/N9rEA8tvTK48NptXl0Jf3dJecbYu4/Az+llms9csBBRK2lqGFhYrwn+a7dLYkM80NGjQkk5tIG+0HLCNwYP1vJYLKgEc/XSEvCoyP2gdE3387mMLjBwBF55aDSf/vmnIawkL6hMYCz5CMuiFl7NbxLZk4RKJwdcJiEfX5xzXEu4f3AVIA/uxyM0pTTX1lJrPL+lzKH8VMfVOFxLTuyBU2VBgcbN6J/kHKanjpjcQ4INvmCKsO7YjsGWcE8MzhWfJrFUbX0ri4hhoESk+eqfP+AgSY0x9ibT/pGD0NKJbU6M6QpV3KfbV/JZ1xgakiIJZbleRonFSL1sSX6x0='
set system login user ${SSH_VYOS_USERNAME} authentication public-keys personal type 'ssh-rsa'

delete system login user vyos

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

set system syslog global facility all level info
set system syslog host 10.10.120.56 facility kern level 'warning'
set system syslog host 10.10.120.56 protocol 'tcp'
set system syslog host 10.10.120.56 port '6001'
set system syslog host 10.10.120.56 format 'octet-counted'

# set system task-scheduler task backup-config crontab-spec '30 0 * * *'
# set system task-scheduler task backup-config executable path '/config/scripts/custom-config-backup.sh'

set system time-zone 'America/Los_Angeles'

# WAN flow export -> tnwks-ops monitoring/flow-collector (WAN top talkers in
# War Room alerts). eth1.10 is the transit to the EdgeRouter, so only
# WAN-bound traffic is exported, with real client IPs (no NAT here).
# Ingress on eth1.10 = download, egress = upload. Windows host 10.10.91.142
# relays udp/2055 into WSL (tnwks-ops docs/wsl-lan-exposure.md).
set system flow-accounting interface 'eth1.10'
set system flow-accounting enable-egress
set system flow-accounting disable-imt
set system flow-accounting netflow version '10'
set system flow-accounting netflow server 10.10.91.142 port '2055'
set system flow-accounting netflow source-address '10.10.91.1'
# Export long-lived flows every 30s so per-client rates are near real time.
set system flow-accounting netflow timeout max-active-life '30'

# DHCP client names for the flow metrics: scripts/dhcp-leases-textfile.py
# writes /config/node-exporter/dhcp.prom (node-exporter textfile collector).
set system task-scheduler task dhcp-leases-textfile interval '1m'
set system task-scheduler task dhcp-leases-textfile executable path '/config/scripts/dhcp-leases-textfile.py'
