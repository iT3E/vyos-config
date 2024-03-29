#!/bin/vbash

# General configuration
set firewall state-policy established action 'accept'
set firewall state-policy invalid action 'drop'
set firewall state-policy related action 'accept'

# Address Groups
set firewall group address-group k8s_ingress address '10.10.120.51'
set firewall group address-group k8s_ingress_internal address '10.10.120.52'

set firewall group address-group 3d_printer_controllers address '10.1.3.56'

set firewall group address-group wyze_cameras address '10.10.91.105'
set firewall group address-group wyze_cameras address '10.10.91.179'
set firewall group address-group wyze_cameras address '10.10.91.109'

set firewall group address-group robovac1 address '10.10.91.110'

set firewall group address-group security_cameras address '10.10.60.30'
set firewall group address-group security_cameras address '10.10.60.31'
set firewall group address-group security_cameras address '10.10.60.32'
set firewall group address-group security_cameras address '10.10.60.33'
set firewall group address-group security_cameras address '10.10.60.34'
set firewall group address-group security_cameras address '10.10.60.35'
set firewall group address-group security_cameras address '10.10.60.100'

set firewall group address-group blue_iris address '10.10.60.210'

set firewall group address-group seccam_nas address '10.10.60.10'

set firewall group address-group it_pc address '10.10.93.232'

set firewall group address-group ilo address '10.10.55.101'
set firewall group address-group ilo address '10.10.55.102'
set firewall group address-group ilo address '10.10.55.103'

set firewall group address-group pve_hosts address '10.10.11.10'
set firewall group address-group pve_hosts address '10.10.11.11'
set firewall group address-group pve_hosts address '10.10.11.12'

set firewall group address-group domain_controllers address '10.10.10.10'
set firewall group address-group domain_controllers address '10.10.10.11'
set firewall group address-group domain_controllers address '10.10.10.12'

set firewall group address-group hass address '10.10.72.201'

set firewall group address-group windows_bastion address '10.10.40.240'

set firewall group address-group freenas address '10.10.40.10'

set firewall group address-group udmpro address '172.16.1.1'

set firewall group address-group haproxy_frontend address '10.10.53.8'
set firewall group address-group haproxy_authenticated address '10.10.53.9'

set firewall group address-group haproxy_all address '10.10.53.2'
set firewall group address-group haproxy_all address '10.10.53.8'
set firewall group address-group haproxy_all address '10.10.53.9'

set firewall group address-group unifi_controller address '10.10.53.10'

set firewall group address-group k8s_vector_aggregator address '10.10.120.56'

# Port groups
set firewall group port-group ad_auth_ports port '389'
set firewall group port-group ad_auth_ports port '53'
set firewall group port-group ad_auth_ports port '3268'
set firewall group port-group ad_auth_ports port '3269'
set firewall group port-group ad_auth_ports port '88'
set firewall group port-group ad_auth_ports port '464'
set firewall group port-group ad_auth_ports port '636'
set firewall group port-group ad_auth_ports port '123'
set firewall group port-group ad_auth_ports port '135'
set firewall group port-group ad_auth_ports port '137'
set firewall group port-group ad_auth_ports port '138'
set firewall group port-group ad_auth_ports port '139'
set firewall group port-group ad_auth_ports port '445'
set firewall group port-group ad_auth_ports port '9389'
set firewall group port-group ad_auth_ports port '5985'
set firewall group port-group ad_auth_ports port '5986'
set firewall group port-group ad_auth_ports port '6000-6199'
set firewall group port-group ad_auth_ports port '49152-65535'

set firewall group port-group powershell_remoting port '5985'
set firewall group port-group powershell_remoting port '5986'

set firewall group port-group unifi_controller_ports port '8080'
set firewall group port-group unifi_controller_ports port '3478'
set firewall group port-group unifi_controller_ports port '6789'

# set firewall group address-group 3d_printer_controllers address '10.1.3.56'

# set firewall group address-group android_tv_players address '10.1.3.16'

# set firewall group address-group ereaders address '10.1.3.51'
# set firewall group address-group ereaders address '10.1.3.52'

# set firewall group address-group esp address '10.1.3.21'
# set firewall group address-group esp address '10.1.3.31'
# set firewall group address-group esp address '10.1.3.32'
# set firewall group address-group esp address '10.1.3.33'
# set firewall group address-group esp address '10.1.3.34'
# set firewall group address-group esp address '10.1.3.35'
# set firewall group address-group esp address '10.1.3.36'
# set firewall group address-group esp address '10.1.3.42'
# set firewall group address-group esp address '10.1.3.45'
# set firewall group address-group esp address '10.1.3.46'

# set firewall group address-group ios_devices address '10.1.2.31'
# set firewall group address-group ios_devices address '10.1.2.32'
# set firewall group address-group ios_devices address '10.1.2.33'
# set firewall group address-group ios_devices address '10.1.2.34'
# set firewall group address-group ios_devices address '10.1.2.35'
# set firewall group address-group ios_devices address '10.1.2.36'

# set firewall group address-group jellyfin_clients address '10.1.2.21'
# set firewall group address-group jellyfin_clients address '10.1.2.31'
# set firewall group address-group jellyfin_clients address '10.1.2.32'
# set firewall group address-group jellyfin_clients address '10.1.2.33'
# set firewall group address-group jellyfin_clients address '10.1.2.34'
# set firewall group address-group jellyfin_clients address '10.1.2.35'
# set firewall group address-group jellyfin_clients address '10.1.2.36'
# set firewall group address-group jellyfin_clients address '10.1.3.16'

# set firewall group address-group k8s_api address '10.5.0.2'

# set firewall group address-group k8s_ingress address '10.45.0.1'

# set firewall group address-group k8s_ingress_allowed address '10.1.3.35'
# set firewall group address-group k8s_ingress_allowed address '10.1.3.36'

# set firewall group address-group k8s_jellyfin address '10.45.0.21'

# set firewall group address-group k8s_mqtt address '10.45.0.10'

# set firewall group address-group k8s_nodes address '10.1.1.31'
# set firewall group address-group k8s_nodes address '10.1.1.32'
# set firewall group address-group k8s_nodes address '10.1.1.33'

# set firewall group address-group k8s_hass address '10.45.0.5'
# set firewall group address-group k8s_plex address '10.45.0.20'
# set firewall group address-group k8s_vector_aggregator address '10.45.0.2'

# set firewall group address-group mqtt_clients address '10.1.2.21'
# set firewall group address-group mqtt_clients address '10.1.2.32'
# set firewall group address-group mqtt_clients address '10.1.3.18'
# set firewall group address-group mqtt_clients address '10.1.3.22'
# set firewall group address-group mqtt_clients address '10.1.3.56'

# set firewall group address-group hass_clients address '10.1.4.12'

# set firewall group address-group nas address '10.1.1.11'

# set firewall group address-group plex_clients address '10.1.2.21'
# set firewall group address-group plex_clients address '10.1.2.31'
# set firewall group address-group plex_clients address '10.1.2.32'
# set firewall group address-group plex_clients address '10.1.2.33'
# set firewall group address-group plex_clients address '10.1.2.34'
# set firewall group address-group plex_clients address '10.1.2.35'
# set firewall group address-group plex_clients address '10.1.2.36'
# set firewall group address-group plex_clients address '10.1.3.16'

# set firewall group address-group printers address '10.1.3.55'

# set firewall group address-group printer_allowed address '192.168.2.11'

# set firewall group address-group scanners address '10.1.3.55'

# set firewall group address-group sonos_controllers address '10.1.2.21'
# set firewall group address-group sonos_controllers address '10.1.2.31'
# set firewall group address-group sonos_controllers address '10.1.2.32'
# set firewall group address-group sonos_controllers address '10.1.2.33'
# set firewall group address-group sonos_controllers address '10.1.2.34'
# set firewall group address-group sonos_controllers address '10.1.2.36'

# set firewall group address-group sonos_players address '10.1.3.61'
# set firewall group address-group sonos_players address '10.1.3.62'
# set firewall group address-group sonos_players address '10.1.3.63'
# set firewall group address-group sonos_players address '10.1.3.65'
# set firewall group address-group sonos_players address '10.1.3.66'
# set firewall group address-group sonos_players address '10.1.3.67'

# set firewall group address-group unifi_devices address '10.1.0.11'
# set firewall group address-group unifi_devices address '10.1.0.12'
# set firewall group address-group unifi_devices address '10.1.0.13'
# set firewall group address-group unifi_devices address '10.1.0.21'
# set firewall group address-group unifi_devices address '10.1.0.22'
# set firewall group address-group unifi_devices address '10.1.0.23'
# set firewall group address-group unifi_devices address '10.1.0.24'

# set firewall group address-group vector_journald_allowed address '10.1.3.56'
# set firewall group address-group vector_journald_allowed address '10.1.3.60'

# set firewall group address-group vyos_coredns address '10.5.0.3'

# set firewall group address-group vyos_dnsdist address '10.5.0.4'

# set firewall group address-group vyos_unifi address '10.5.0.10'

# set firewall group address-group wall_displays address '10.1.3.53'
# set firewall group address-group wall_displays address '10.1.3.54'

# set firewall group network-group k8s_services network '10.45.0.0/16'

# # Port groups
# set firewall group port-group wireguard port '51820'
