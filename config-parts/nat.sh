#!/bin/vbash

# Force DNS
# set nat destination rule 102 description 'Force DNS for unifi-frontend-910'
# set nat destination rule 102 destination address '!10.10.53.4'
# set nat destination rule 102 destination port '53'
# set nat destination rule 102 inbound-interface 'eth0.910'
# set nat destination rule 102 protocol 'tcp_udp'
# set nat destination rule 102 translation address '10.10.53.4'
# set nat destination rule 102 translation port '53'

set nat destination rule 103 description 'Force DNS for seccam-610'
set nat destination rule 103 source address '!10.10.60.210'
set nat destination rule 103 destination address '!10.10.53.4'
set nat destination rule 103 destination port '53'
set nat destination rule 103 inbound-interface 'eth0.610'
set nat destination rule 103 protocol 'tcp_udp'
set nat destination rule 103 translation address '10.10.53.4'
set nat destination rule 103 translation port '53'

# Force NTP
# unifi-mgmt-900 - 10.10.90.1/24
# set nat destination rule 110 description 'Force NTP for unifi-mgmt-900'
# set nat destination rule 110 destination address '!10.10.90.1'
# set nat destination rule 110 destination port '123'
# set nat destination rule 110 inbound-interface 'eth0.900'
# set nat destination rule 110 protocol 'udp'
# set nat destination rule 110 translation address '10.10.90.1'
# set nat destination rule 110 translation port '123'

# unifi-frontend-910 - 10.10.91.1/24
# set nat destination rule 111 description 'Force NTP for unifi-frontend-910'
# set nat destination rule 111 destination address '!10.10.91.1'
# set nat destination rule 111 destination port '123'
# set nat destination rule 111 inbound-interface 'eth0.910'
# set nat destination rule 111 protocol 'udp'
# set nat destination rule 111 translation address '10.10.91.1'
# set nat destination rule 111 translation port '123'

# k8s-120 - 10.10.120.1/24
set nat destination rule 112 description 'Force NTP for k8s-120'
set nat destination rule 112 destination address '!10.10.120.1'
set nat destination rule 112 destination port '123'
set nat destination rule 112 inbound-interface 'eth0.120'
set nat destination rule 112 protocol 'udp'
set nat destination rule 112 translation address '10.10.120.1'
set nat destination rule 112 translation port '123'

# iLO-550 - 10.10.55.1/24
set nat destination rule 113 description 'Force NTP for iLO-550'
set nat destination rule 113 destination address '!10.10.55.1'
set nat destination rule 113 destination port '123'
set nat destination rule 113 inbound-interface 'eth0.550'
set nat destination rule 113 protocol 'udp'
set nat destination rule 113 translation address '10.10.55.1'
set nat destination rule 113 translation port '123'

# pve-11 - 10.10.11.1/24
# set nat destination rule 114 description 'Force NTP for pve-11'
# set nat destination rule 114 destination address '!10.10.11.1'
# set nat destination rule 114 destination port '123'
# set nat destination rule 114 inbound-interface 'eth0.11'
# set nat destination rule 114 protocol 'udp'
# set nat destination rule 114 translation address '10.10.11.1'
# set nat destination rule 114 translation port '123'

# seccam-610 - 10.10.60.1/24
set nat destination rule 115 description 'Force NTP for seccam-610'
set nat destination rule 115 destination address '!10.10.60.1'
set nat destination rule 115 destination port '123'
set nat destination rule 115 inbound-interface 'eth0.610'
set nat destination rule 115 protocol 'udp'
set nat destination rule 115 translation address '10.10.60.1'
set nat destination rule 115 translation port '123'

# UISP-140 - 10.10.140.1/24
set nat destination rule 116 description 'Force NTP for UISP-140'
set nat destination rule 116 destination address '!10.10.140.1'
set nat destination rule 116 destination port '123'
set nat destination rule 116 inbound-interface 'eth0.140'
set nat destination rule 116 protocol 'udp'
set nat destination rule 116 translation address '10.10.140.1'
set nat destination rule 116 translation port '123'

# transit-10 - 172.16.1.254/24
set nat destination rule 117 description 'Force NTP for transit-10'
set nat destination rule 117 destination address '!172.16.1.254'
set nat destination rule 117 destination port '123'
set nat destination rule 117 inbound-interface 'eth0.10'
set nat destination rule 117 protocol 'udp'
set nat destination rule 117 translation address '172.16.1.254'
set nat destination rule 117 translation port '123'

# # ad-110 - 10.10.10.1/24
#set nat destination rule 118 description 'Force NTP for ad-110'
#set nat destination rule 118 destination address '!10.10.10.1'
#set nat destination rule 118 destination port '123'
#set nat destination rule 118 inbound-interface 'eth0.110'
#set nat destination rule 118 protocol 'udp'
#set nat destination rule 118 translation address '10.10.10.1'
#set nat destination rule 118 translation port '123'

# # bastion-410 - 10.10.40.1/24
#set nat destination rule 119 description 'Force NTP for bastion-410'
#set nat destination rule 119 destination address '!10.10.40.1'
#set nat destination rule 119 destination port '123'
#set nat destination rule 119 inbound-interface 'eth0.410'
#set nat destination rule 119 protocol 'udp'
#set nat destination rule 119 translation address '10.10.40.1'
#set nat destination rule 119 translation port '123'

# # app-720 - 10.10.72.1/24
set nat destination rule 120 description 'Force NTP for app-720'
set nat destination rule 120 destination address '!10.10.72.1'
set nat destination rule 120 destination port '123'
set nat destination rule 120 inbound-interface 'eth0.720'
set nat destination rule 120 protocol 'udp'
set nat destination rule 120 translation address '10.10.72.1'
set nat destination rule 120 translation port '123'


# set nat destination rule 104 description 'Force NTP for LAN'
# set nat destination rule 104 destination address '!10.1.0.1'
# set nat destination rule 104 destination port '123'
# set nat destination rule 104 inbound-interface 'eth1'
# set nat destination rule 104 protocol 'udp'
# set nat destination rule 104 translation address '10.1.0.1'
# set nat destination rule 104 translation port '123'

# set nat destination rule 105 description 'Force NTP for Servers'
# set nat destination rule 105 destination address '!10.1.1.1'
# set nat destination rule 105 destination port '123'
# set nat destination rule 105 inbound-interface 'eth1.10'
# set nat destination rule 105 protocol 'udp'
# set nat destination rule 105 translation address '10.1.1.1'
# set nat destination rule 105 translation port '123'

# set nat destination rule 106 description 'Force NTP for Trusted'
# set nat destination rule 106 destination address '!10.1.2.1'
# set nat destination rule 106 destination port '123'
# set nat destination rule 106 inbound-interface 'eth1.20'
# set nat destination rule 106 protocol 'udp'
# set nat destination rule 106 translation address '10.1.2.1'
# set nat destination rule 106 translation port '123'

# set nat destination rule 107 description 'Force NTP for IoT'
# set nat destination rule 107 destination address '!10.1.3.1'
# set nat destination rule 107 destination port '123'
# set nat destination rule 107 inbound-interface 'eth1.40'
# set nat destination rule 107 protocol 'udp'
# set nat destination rule 107 translation address '10.1.3.1'
# set nat destination rule 107 translation port '123'

# set nat destination rule 108 description 'Force NTP for Video'
# set nat destination rule 108 destination address '!10.1.4.1'
# set nat destination rule 108 destination port '123'
# set nat destination rule 108 inbound-interface 'eth1.50'
# set nat destination rule 108 protocol 'udp'
# set nat destination rule 108 translation address '10.1.4.1'
# set nat destination rule 108 translation port '123'

# set nat destination rule 109 description 'Force NTP for Wireguard Trusted'
# set nat destination rule 109 destination address '!10.0.11.1'
# set nat destination rule 109 destination port '123'
# set nat destination rule 109 inbound-interface 'wg01'
# set nat destination rule 109 protocol 'udp'
# set nat destination rule 109 translation address '10.0.11.1'
# set nat destination rule 109 translation port '123'

# LAN -> WAN masquerade
##i do not believe this is needed. commenting out for now
# set nat source rule 100 description 'LAN -> WAN'
# set nat source rule 100 destination address '0.0.0.0/0'
# set nat source rule 100 outbound-interface 'eth0.10'
# # set nat source rule 100 outbound-interface 'pppoe0'
# set nat source rule 100 translation address 'masquerade'
