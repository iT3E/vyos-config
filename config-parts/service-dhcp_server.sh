#!/bin/vbash

##VLANs
#unifi-mgmt-900
#unifi-frontend-910
#k8s-120
#iLO-550
#pve-11
#seccam-610
#UISP-140
#transit-10
#ad-110
#bastion-410
#app-720
#vpn


# unifi-mgmt-900
set service dhcp-server shared-network-name unifi-mgmt-900 authoritative
set service dhcp-server shared-network-name unifi-mgmt-900 ping-check
set service dhcp-server shared-network-name unifi-mgmt-900 subnet 10.10.90.0/24 default-router '10.10.90.1'
set service dhcp-server shared-network-name unifi-mgmt-900 subnet 10.10.90.0/24 lease '86400'
set service dhcp-server shared-network-name unifi-mgmt-900 subnet 10.10.90.0/24 name-server '10.10.53.4'
set service dhcp-server shared-network-name unifi-mgmt-900 subnet 10.10.90.0/24 range 0 start '10.10.90.100'
set service dhcp-server shared-network-name unifi-mgmt-900 subnet 10.10.90.0/24 range 0 stop '10.10.90.200'

# unifi-frontend-910
set service dhcp-server shared-network-name unifi-frontend-910 authoritative
set service dhcp-server shared-network-name unifi-frontend-910 ping-check
set service dhcp-server shared-network-name unifi-frontend-910 subnet 10.10.91.0/24 default-router '10.10.91.1'
set service dhcp-server shared-network-name unifi-frontend-910 subnet 10.10.91.0/24 lease '86400'
set service dhcp-server shared-network-name unifi-frontend-910 subnet 10.10.91.0/24 name-server '10.10.53.4'
set service dhcp-server shared-network-name unifi-frontend-910 subnet 10.10.91.0/24 range 0 start '10.10.91.100'
set service dhcp-server shared-network-name unifi-frontend-910 subnet 10.10.91.0/24 range 0 stop '10.10.91.200'

set service dhcp-server shared-network-name unifi-frontend-910 subnet 10.10.91.0/24 static-mapping wyze_cam_1 ip-address '10.10.91.105'
set service dhcp-server shared-network-name unifi-frontend-910 subnet 10.10.91.0/24 static-mapping wyze_cam_1 mac-address 'd0:3f:27:5c:0c:3f'
set service dhcp-server shared-network-name unifi-frontend-910 subnet 10.10.91.0/24 static-mapping wyze_cam_2 ip-address '10.10.91.109'
set service dhcp-server shared-network-name unifi-frontend-910 subnet 10.10.91.0/24 static-mapping wyze_cam_2 mac-address 'd0:3f:27:05:55:11'
set service dhcp-server shared-network-name unifi-frontend-910 subnet 10.10.91.0/24 static-mapping wyze_cam_3 ip-address '10.10.91.179'
set service dhcp-server shared-network-name unifi-frontend-910 subnet 10.10.91.0/24 static-mapping wyze_cam_3 mac-address '2c:aa:8e:1c:47:b9'

set service dhcp-server shared-network-name unifi-frontend-910 subnet 10.10.91.0/24 static-mapping robovac1 ip-address '10.10.91.110'
set service dhcp-server shared-network-name unifi-frontend-910 subnet 10.10.91.0/24 static-mapping robovac1 mac-address '50:ec:50:03:62:5a'

# seccam-610
set service dhcp-server shared-network-name seccam-610 authoritative
set service dhcp-server shared-network-name seccam-610 ping-check
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 default-router '10.10.60.1'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 lease '86400'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 name-server '10.10.53.4'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 range 0 start '10.10.60.30'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 range 0 stop '10.10.60.100'

set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 static-mapping amcrest1 ip-address '10.10.60.31'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 static-mapping amcrest1 mac-address '9c:8e:cd:0b:48:58'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 static-mapping amcrest2 ip-address '10.10.60.32'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 static-mapping amcrest2 mac-address '9c:8e:cd:0b:47:ad'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 static-mapping RLC-410 ip-address '10.10.60.33'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 static-mapping RLC-410 mac-address 'ec:71:db:ee:71:40'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 static-mapping sv3c01 ip-address '10.10.60.34'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 static-mapping sv3c01 mac-address 'c0:99:60:d6:3e:bc'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 static-mapping sv3c02 ip-address '10.10.60.35'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 static-mapping sv3c02 mac-address 'c0:99:2f:62:9a:ab'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 static-mapping loryta01 ip-address '10.10.60.100'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 static-mapping loryta01 mac-address '08:ed:ed:03:b4:4e'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 static-mapping loryta02 ip-address '10.10.60.30'
set service dhcp-server shared-network-name seccam-610 subnet 10.10.60.0/24 static-mapping loryta02 mac-address '08:ed:ed:5e:8d:8d'

# iLO-550
set service dhcp-server shared-network-name iLO-550 authoritative
set service dhcp-server shared-network-name iLO-550 ping-check
set service dhcp-server shared-network-name iLO-550 subnet 10.10.55.0/24 default-router '10.10.55.1'
set service dhcp-server shared-network-name iLO-550 subnet 10.10.55.0/24 lease '86400'
set service dhcp-server shared-network-name iLO-550 subnet 10.10.55.0/24 name-server '10.10.53.4'
set service dhcp-server shared-network-name iLO-550 subnet 10.10.55.0/24 range 0 start '10.10.55.100'
set service dhcp-server shared-network-name iLO-550 subnet 10.10.55.0/24 range 0 stop '10.10.55.200'

set service dhcp-server shared-network-name iLO-550 subnet 10.10.55.0/24 static-mapping sce-pve02-ilo ip-address '10.10.55.100'
set service dhcp-server shared-network-name iLO-550 subnet 10.10.55.0/24 static-mapping sce-pve02-ilo mac-address '2c:59:e5:3b:84:9c'
set service dhcp-server shared-network-name iLO-550 subnet 10.10.55.0/24 static-mapping sce-pve03-ilo ip-address '10.10.55.101'
set service dhcp-server shared-network-name iLO-550 subnet 10.10.55.0/24 static-mapping sce-pve03-ilo mac-address 'ac:16:2d:be:93:22'
set service dhcp-server shared-network-name iLO-550 subnet 10.10.55.0/24 static-mapping sce-pve01-ilo ip-address '10.10.55.102'
set service dhcp-server shared-network-name iLO-550 subnet 10.10.55.0/24 static-mapping sce-pve01-ilo mac-address 'a4:5d:36:fb:15:56'

# app-720
set service dhcp-server shared-network-name app-720 authoritative
set service dhcp-server shared-network-name app-720 ping-check
set service dhcp-server shared-network-name app-720 subnet 10.10.72.0/24 default-router '10.10.72.1'
set service dhcp-server shared-network-name app-720 subnet 10.10.72.0/24 lease '86400'
set service dhcp-server shared-network-name app-720 subnet 10.10.72.0/24 name-server '10.10.53.4'
set service dhcp-server shared-network-name app-720 subnet 10.10.72.0/24 range 0 start '10.10.72.100'
set service dhcp-server shared-network-name app-720 subnet 10.10.72.0/24 range 0 stop '10.10.72.200'

# bastion-410
set service dhcp-server shared-network-name bastion-410 authoritative
set service dhcp-server shared-network-name bastion-410 ping-check
set service dhcp-server shared-network-name bastion-410 subnet 10.10.40.0/24 default-router '10.10.40.1'
set service dhcp-server shared-network-name bastion-410 subnet 10.10.40.0/24 lease '86400'
set service dhcp-server shared-network-name bastion-410 subnet 10.10.40.0/24 name-server '10.10.53.4'
set service dhcp-server shared-network-name bastion-410 subnet 10.10.40.0/24 range 0 start '10.10.40.100'
set service dhcp-server shared-network-name bastion-410 subnet 10.10.40.0/24 range 0 stop '10.10.40.200'

# k8s-120
set service dhcp-server shared-network-name k8s-120 authoritative
set service dhcp-server shared-network-name k8s-120 ping-check
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 default-router '10.10.120.1'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 lease '86400'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 name-server '10.10.53.4'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 range 0 start '10.10.120.100'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 range 0 stop '10.10.120.200'

set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 static-mapping sce-uk8sm01 ip-address '10.10.120.107'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 static-mapping sce-uk8sm01 mac-address '0e:dd:a7:62:16:91'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 static-mapping sce-uk8sm02 ip-address '10.10.120.112'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 static-mapping sce-uk8sm02 mac-address 'b6:92:1a:44:b3:2c'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 static-mapping sce-uk8sm03 ip-address '10.10.120.110'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 static-mapping sce-uk8sm03 mac-address 'd6:e4:ba:d5:5e:e8'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 static-mapping sce-uk8sw01 ip-address '10.10.120.108'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 static-mapping sce-uk8sw01 mac-address '56:55:48:8c:4a:96'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 static-mapping sce-uk8sw02 ip-address '10.10.120.109'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 static-mapping sce-uk8sw02 mac-address 'c2:8e:cc:1f:89:3d'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 static-mapping sce-uk8sw03 ip-address '10.10.120.111'
set service dhcp-server shared-network-name k8s-120 subnet 10.10.120.0/24 static-mapping sce-uk8sw03 mac-address '7e:a6:19:07:2e:5d'

# UISP-140
set service dhcp-server shared-network-name UISP-140 authoritative
set service dhcp-server shared-network-name UISP-140 ping-check
set service dhcp-server shared-network-name UISP-140 subnet 10.10.140.0/24 default-router '10.10.140.1'
set service dhcp-server shared-network-name UISP-140 subnet 10.10.140.0/24 lease '86400'
set service dhcp-server shared-network-name UISP-140 subnet 10.10.140.0/24 name-server '10.10.53.4'
set service dhcp-server shared-network-name UISP-140 subnet 10.10.140.0/24 range 0 start '10.10.140.100'
set service dhcp-server shared-network-name UISP-140 subnet 10.10.140.0/24 range 0 stop '10.10.140.200'

set service dhcp-server shared-network-name UISP-140 subnet 10.10.140.0/24 static-mapping sce-ep01 ip-address '10.10.140.140'
set service dhcp-server shared-network-name UISP-140 subnet 10.10.140.0/24 static-mapping sce-ep01 mac-address '74:ac:b9:a3:5b:0b'

# ad-110
set service dhcp-server shared-network-name ad-110 authoritative
set service dhcp-server shared-network-name ad-110 ping-check
set service dhcp-server shared-network-name ad-110 subnet 10.10.10.0/24 default-router '10.10.10.1'
set service dhcp-server shared-network-name ad-110 subnet 10.10.10.0/24 lease '86400'
set service dhcp-server shared-network-name ad-110 subnet 10.10.10.0/24 name-server '10.10.53.4'
set service dhcp-server shared-network-name ad-110 subnet 10.10.10.0/24 range 0 start '10.10.10.100'
set service dhcp-server shared-network-name ad-110 subnet 10.10.10.0/24 range 0 stop '10.10.10.200'

# # Guest VLAN
# set service dhcp-server shared-network-name GUEST authoritative
# set service dhcp-server shared-network-name GUEST ping-check
# set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 default-router '192.168.2.1'
# set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 lease '86400'
# set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 name-server '10.5.0.4'
# set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 range 0 start '192.168.2.200'
# set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 range 0 stop '192.168.2.254'

# set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 static-mapping manyie-work-laptop ip-address '192.168.2.11'
# set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 static-mapping manyie-work-laptop mac-address '14:f6:d8:32:46:41'

# # IoT VLAN
# set service dhcp-server shared-network-name IOT authoritative
# set service dhcp-server shared-network-name IOT ping-check
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 default-router '10.1.3.1'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 domain-name 'bjw-s.tech'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 lease '86400'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 name-server '10.5.0.4'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 range 0 start '10.1.3.200'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 range 0 stop '10.1.3.254'

# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-3dprinter-plug ip-address '10.1.3.33'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-3dprinter-plug mac-address 'a4:e5:7c:ab:f4:cd'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-desk-plug ip-address '10.1.3.31'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-desk-plug mac-address 'a4:e5:7c:ab:f5:ad'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-hue-bridge ip-address '10.1.3.24'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-hue-bridge mac-address '00:17:88:2e:2d:5d'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-speaker-esp ip-address '10.1.3.36'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-speaker-esp mac-address 'e8:9f:6d:0a:53:24'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping backyard-shed-esp ip-address '10.1.3.42'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping backyard-shed-esp mac-address 'b4:e6:2d:59:de:0c'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping bedroom-eva-sonos ip-address '10.1.3.65'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping bedroom-eva-sonos mac-address 'b8:e9:37:55:d8:6c'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping bernd-ereader ip-address '10.1.3.51'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping bernd-ereader mac-address '58:b0:d4:6e:53:29'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping garage-tablet ip-address '10.1.3.54'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping garage-tablet mac-address '4c:ef:c0:00:50:aa'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping garden-wlanthermo ip-address '10.1.3.21'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping garden-wlanthermo mac-address '8c:aa:b5:c1:ce:c8'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-tablet ip-address '10.1.3.53'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-tablet mac-address 'f4:f3:09:c9:40:33'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-p1reader-esp ip-address '10.1.3.45'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-p1reader-esp mac-address 'c4:5b:be:49:4c:c8'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-tado-bridge ip-address '10.1.3.23'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-tado-bridge mac-address 'ec:e5:12:1b:39:a6'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-zigbee-adapter ip-address '10.1.3.46'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-zigbee-adapter mac-address 'cc:db:a7:48:19:b3'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping kitchen-coffeemaker ip-address '10.1.3.13'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping kitchen-coffeemaker mac-address '68:a4:0e:35:43:72'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping kitchen-oven ip-address '10.1.3.12'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping kitchen-oven mac-address '68:a4:0e:34:fc:6f'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping kitchen-sonos ip-address '10.1.3.61'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping kitchen-sonos mac-address '48:a6:b8:d3:6c:f4'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-airpurifier ip-address '10.1.3.19'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-airpurifier mac-address '78:11:dc:bc:eb:de'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-receiver ip-address '10.1.3.17'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-receiver mac-address '00:05:cd:82:29:21'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-shield ip-address '10.1.3.16'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-shield mac-address '48:b0:2d:2d:4b:cc'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-sonos ip-address '10.1.3.63'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-sonos mac-address '48:a6:b8:dc:6c:7e'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-tv ip-address '10.1.3.14'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-tv mac-address '74:40:be:0d:54:9a'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-vacuum ip-address '10.1.3.18'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-vacuum mac-address '50:ec:50:1d:37:3c'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-harmony-hub ip-address '10.1.3.15'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-harmony-hub mac-address '00:04:20:fd:2d:e4'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-nintendo-switch ip-address '10.1.3.20'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-nintendo-switch mac-address '98:41:5c:b2:98:2e'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-receiver-sonos ip-address '10.1.3.66'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-receiver-sonos mac-address 'b8:e9:37:9b:f5:c6'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-sonos-move ip-address '10.1.3.67'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-sonos-move mac-address 'c4:38:75:25:83:76'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping manyie-ereader ip-address '10.1.3.52'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping manyie-ereader mac-address '58:b0:d4:67:f5:74'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping spare-p1eu-1 ip-address '10.1.3.34'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping spare-p1eu-1 mac-address 'a4:e5:7c:ab:c8:db'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping study-printer ip-address '10.1.3.55'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping study-printer mac-address '80:2b:f9:d4:3a:be'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-vacuum ip-address '10.1.3.22'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-vacuum mac-address '7c:49:eb:94:4a:58'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-office-sonos ip-address '10.1.3.62'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-office-sonos mac-address '94:9f:3e:04:88:2a'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-office-desk-plug ip-address '10.1.3.32'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-office-desk-plug mac-address 'a4:e5:7c:ab:ca:33'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-office-speaker-esp ip-address '10.1.3.35'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-office-speaker-esp mac-address '4c:75:25:bf:b4:d0'

# # LAN
# set service dhcp-server shared-network-name LAN authoritative
# set service dhcp-server shared-network-name LAN ping-check
# set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 default-router '10.1.0.1'
# set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 lease '86400'
# set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 name-server '10.5.0.4'
# set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 range 0 start '10.1.0.200'
# set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 range 0 stop '10.1.0.254'

# # set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping ap01 ip-address '10.1.0.21'
# # set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping ap01 mac-address '44:d9:e7:fc:21:f9'
# # set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping ap02 ip-address '10.1.0.22'
# # set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping ap02 mac-address 'fc:ec:da:b6:27:87'
# # set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping ap03 ip-address '10.1.0.23'
# # set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping ap03 mac-address 'e0:63:da:ac:d4:3e'
# # set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping ap04 ip-address '10.1.0.24'
# # set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping ap04 mac-address '80:2a:a8:d3:0b:b3'
# # set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping switch01 ip-address '10.1.0.11'
# # set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping switch01 mac-address '70:a7:41:f3:c8:92'
# # set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping switch02 ip-address '10.1.0.12'
# # set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping switch02 mac-address '68:d7:9a:3c:b0:75'
# # set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping switch03 ip-address '10.1.0.13'
# # set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping switch03 mac-address '74:83:c2:0c:19:90'

# # Servers VLAN
# set service dhcp-server shared-network-name SERVERS authoritative
# set service dhcp-server shared-network-name SERVERS ping-check
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 default-router '10.1.1.1'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 domain-name 'bjw-s.tech'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 lease '86400'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 name-server '10.5.0.4'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 range 0 start '10.1.1.200'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 range 0 stop '10.1.1.254'

# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping delta ip-address '10.1.1.31'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping delta mac-address '94:c6:91:a6:84:87'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping enigma ip-address '10.1.1.32'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping enigma mac-address '00:e0:4c:68:18:2d'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping felix ip-address '10.1.1.33'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping felix mac-address '00:e0:4c:68:18:23'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping librarium ip-address '10.1.1.11'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping librarium mac-address '00:11:32:9a:e3:5f'

# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping horus ip-address '10.1.1.51'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping horus mac-address 'b8:27:eb:b2:09:b0'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping diego ip-address '10.1.1.52'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping diego mac-address 'dc:a6:32:93:f5:83'

# # Trusted VLAN
# set service dhcp-server shared-network-name TRUSTED authoritative
# set service dhcp-server shared-network-name TRUSTED ping-check
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 default-router '10.1.2.1'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 domain-name 'bjw-s.tech'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 lease '86400'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 name-server '10.5.0.4'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 range 0 start '10.1.2.200'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 range 0 stop '10.1.2.254'

# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping bernd-ipad ip-address '10.1.2.32'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping bernd-ipad mac-address '54:62:e2:53:72:1b'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping bernd-iphone ip-address '10.1.2.31'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping bernd-iphone mac-address '24:5e:48:98:39:1c'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping delphi ip-address '10.1.2.21'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping delphi mac-address 'f8:4d:89:7a:db:8b'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping eva-ipad ip-address '10.1.2.35'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping eva-ipad mac-address 'aa:ab:96:ce:f8:03'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping kitchen-ipad ip-address '10.1.2.36'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping kitchen-ipad mac-address '34:e2:fd:ac:7c:fa'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-ipad ip-address '10.1.2.34'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-ipad mac-address '94:bf:2d:f0:3f:c3'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-iphone ip-address '10.1.2.33'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-iphone mac-address '8c:98:6b:a9:18:cb'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-macbook ip-address '10.1.2.22'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-macbook mac-address '8c:85:90:18:42:38'

# # Video VLAN
# set service dhcp-server shared-network-name VIDEO authoritative
# set service dhcp-server shared-network-name VIDEO ping-check
# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 default-router '10.1.4.1'
# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 domain-name 'bjw-s.tech'
# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 lease '86400'
# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 name-server '10.5.0.4'
# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 range 0 start '10.1.4.200'
# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 range 0 stop '10.1.4.254'

# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 static-mapping driveway-camera-doorbell ip-address '10.1.4.12'
# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 static-mapping driveway-camera-doorbell mac-address 'ec:71:db:88:50:f8'
