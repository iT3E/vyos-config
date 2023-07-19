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



# FROM unifi-mgmt-900 TO unifi-frontend-910
set firewall name unifi-mgmt-900-unifi-frontend-910 default-action 'drop'
set firewall name unifi-mgmt-900-unifi-frontend-910 description 'From unifi-mgmt-900 to unifi-frontend-910'
set firewall name unifi-mgmt-900-unifi-frontend-910 enable-default-log

# FROM unifi-mgmt-900 TO k8s-120
set firewall name unifi-mgmt-900-k8s-120 default-action 'drop'
set firewall name unifi-mgmt-900-k8s-120 description 'From unifi-mgmt-900 to k8s-120'
set firewall name unifi-mgmt-900-k8s-120 enable-default-log

# FROM unifi-mgmt-900 TO iLO-550
set firewall name unifi-mgmt-900-iLO-550 default-action 'drop'
set firewall name unifi-mgmt-900-iLO-550 description 'From unifi-mgmt-900 to iLO-550'
set firewall name unifi-mgmt-900-iLO-550 enable-default-log

# FROM unifi-mgmt-900 TO pve-11
set firewall name unifi-mgmt-900-pve-11 default-action 'drop'
set firewall name unifi-mgmt-900-pve-11 description 'From unifi-mgmt-900 to pve-11'
set firewall name unifi-mgmt-900-pve-11 enable-default-log

# FROM unifi-mgmt-900 TO seccam-610
set firewall name unifi-mgmt-900-seccam-610 default-action 'drop'
set firewall name unifi-mgmt-900-seccam-610 description 'From unifi-mgmt-900 to seccam-610'
set firewall name unifi-mgmt-900-seccam-610 enable-default-log

# FROM unifi-mgmt-900 TO UISP-140
set firewall name unifi-mgmt-900-UISP-140 default-action 'drop'
set firewall name unifi-mgmt-900-UISP-140 description 'From unifi-mgmt-900 to UISP-140'
set firewall name unifi-mgmt-900-UISP-140 enable-default-log

# FROM unifi-mgmt-900 TO ad-110
set firewall name unifi-mgmt-900-ad-110 default-action 'drop'
set firewall name unifi-mgmt-900-ad-110 description 'From unifi-mgmt-900 to ad-110'
set firewall name unifi-mgmt-900-ad-110 enable-default-log

# FROM unifi-mgmt-900 TO bastion-410
set firewall name unifi-mgmt-900-bastion-410 default-action 'drop'
set firewall name unifi-mgmt-900-bastion-410 description 'From unifi-mgmt-900 to bastion-410'
set firewall name unifi-mgmt-900-bastion-410 enable-default-log

# FROM unifi-mgmt-900 TO app-720
set firewall name unifi-mgmt-900-app-720 default-action 'drop'
set firewall name unifi-mgmt-900-app-720 description 'From unifi-mgmt-900 to app-720'
set firewall name unifi-mgmt-900-app-720 enable-default-log

# From unifi-mgmt-900 TO containers
set firewall name unifi-mgmt-900-containers default-action 'drop'
set firewall name unifi-mgmt-900-containers description 'From unifi-mgmt-900 to containers'
set firewall name unifi-mgmt-900-containers enable-default-log
set firewall name unifi-mgmt-900-containers rule 1 action 'accept'
set firewall name unifi-mgmt-900-containers rule 1 description 'Rule: accept_dns'
set firewall name unifi-mgmt-900-containers rule 1 destination port 'domain,domain-s'
set firewall name unifi-mgmt-900-containers rule 1 protocol 'tcp_udp'

# FROM unifi-frontend-910 TO unifi-mgmt-900
set firewall name unifi-frontend-910-unifi-mgmt-900 default-action 'drop'
set firewall name unifi-frontend-910-unifi-mgmt-900 description 'From unifi-frontend-910 to unifi-mgmt-900'
set firewall name unifi-frontend-910-unifi-mgmt-900 enable-default-log

# FROM unifi-frontend-910 TO k8s-120
set firewall name unifi-frontend-910-k8s-120 default-action 'drop'
set firewall name unifi-frontend-910-k8s-120 description 'From unifi-frontend-910 to k8s-120'
set firewall name unifi-frontend-910-k8s-120 enable-default-log

# FROM unifi-frontend-910 TO iLO-550
set firewall name unifi-frontend-910-iLO-550 default-action 'drop'
set firewall name unifi-frontend-910-iLO-550 description 'From unifi-frontend-910 to iLO-550'
set firewall name unifi-frontend-910-iLO-550 enable-default-log

# FROM unifi-frontend-910 TO pve-11
set firewall name unifi-frontend-910-pve-11 default-action 'drop'
set firewall name unifi-frontend-910-pve-11 description 'From unifi-frontend-910 to pve-11'
set firewall name unifi-frontend-910-pve-11 enable-default-log

# FROM unifi-frontend-910 TO seccam-610
set firewall name unifi-frontend-910-seccam-610 default-action 'drop'
set firewall name unifi-frontend-910-seccam-610 description 'From unifi-frontend-910 to seccam-610'
set firewall name unifi-frontend-910-seccam-610 enable-default-log

# FROM unifi-frontend-910 TO UISP-140
set firewall name unifi-frontend-910-UISP-140 default-action 'drop'
set firewall name unifi-frontend-910-UISP-140 description 'From unifi-frontend-910 to UISP-140'
set firewall name unifi-frontend-910-UISP-140 enable-default-log

# FROM unifi-frontend-910 TO ad-110
set firewall name unifi-frontend-910-ad-110 default-action 'drop'
set firewall name unifi-frontend-910-ad-110 description 'From unifi-frontend-910 to ad-110'
set firewall name unifi-frontend-910-ad-110 enable-default-log

# FROM unifi-frontend-910 TO bastion-410
set firewall name unifi-frontend-910-bastion-410 default-action 'drop'
set firewall name unifi-frontend-910-bastion-410 description 'From unifi-frontend-910 to bastion-410'
set firewall name unifi-frontend-910-bastion-410 enable-default-log

# FROM unifi-frontend-910 TO app-720
set firewall name unifi-frontend-910-app-720 default-action 'drop'
set firewall name unifi-frontend-910-app-720 description 'From unifi-frontend-910 to app-720'
set firewall name unifi-frontend-910-app-720 enable-default-log

# From unifi-frontend-910 TO containers
set firewall name unifi-frontend-910-containers default-action 'drop'
set firewall name unifi-frontend-910-containers description 'From unifi-frontend-910 to containers'
set firewall name unifi-frontend-910-containers enable-default-log
set firewall name unifi-frontend-910-containers rule 1 action 'accept'
set firewall name unifi-frontend-910-containers rule 1 description 'Rule: accept_dns'
set firewall name unifi-frontend-910-containers rule 1 destination port 'domain,domain-s'
set firewall name unifi-frontend-910-containers rule 1 protocol 'tcp_udp'
set firewall name unifi-frontend-910-containers rule 2 action 'accept'
set firewall name unifi-frontend-910-containers rule 2 description 'Rule: allow_80_443_to_haproxy_services'
set firewall name unifi-frontend-910-containers rule 2 destination group address-group 'haproxy_services'
set firewall name unifi-frontend-910-containers rule 2 destination port '80,443'
set firewall name unifi-frontend-910-containers rule 2 protocol 'tcp'

# FROM k8s-120 TO unifi-mgmt-900
set firewall name k8s-120-unifi-mgmt-900 default-action 'drop'
set firewall name k8s-120-unifi-mgmt-900 description 'From k8s-120 to unifi-mgmt-900'
set firewall name k8s-120-unifi-mgmt-900 enable-default-log

# FROM k8s-120 TO unifi-frontend-910
set firewall name k8s-120-unifi-frontend-910 default-action 'drop'
set firewall name k8s-120-unifi-frontend-910 description 'From k8s-120 to unifi-frontend-910'
set firewall name k8s-120-unifi-frontend-910 enable-default-log
set firewall name k8s-120-unifi-frontend-910 rule 1 action 'accept'
set firewall name k8s-120-unifi-frontend-910 rule 1 description 'Rule: allow_tcp_udp_robovac2'
set firewall name k8s-120-unifi-frontend-910 rule 1 destination group address-group 'robovac1'
set firewall name k8s-120-unifi-frontend-910 rule 1 protocol 'tcp_udp'


# FROM k8s-120 TO iLO-550
set firewall name k8s-120-iLO-550 default-action 'drop'
set firewall name k8s-120-iLO-550 description 'From k8s-120 to iLO-550'
set firewall name k8s-120-iLO-550 enable-default-log

# FROM k8s-120 TO pve-11
set firewall name k8s-120-pve-11 default-action 'drop'
set firewall name k8s-120-pve-11 description 'From k8s-120 to pve-11'
set firewall name k8s-120-pve-11 enable-default-log

# FROM k8s-120 TO seccam-610
set firewall name k8s-120-seccam-610 default-action 'drop'
set firewall name k8s-120-seccam-610 description 'From k8s-120 to seccam-610'
set firewall name k8s-120-seccam-610 enable-default-log

# FROM k8s-120 TO UISP-140
set firewall name k8s-120-UISP-140 default-action 'drop'
set firewall name k8s-120-UISP-140 description 'From k8s-120 to UISP-140'
set firewall name k8s-120-UISP-140 enable-default-log

# FROM k8s-120 TO ad-110
set firewall name k8s-120-ad-110 default-action 'drop'
set firewall name k8s-120-ad-110 description 'From k8s-120 to ad-110'
set firewall name k8s-120-ad-110 enable-default-log

# FROM k8s-120 TO bastion-410
set firewall name k8s-120-bastion-410 default-action 'drop'
set firewall name k8s-120-bastion-410 description 'From k8s-120 to bastion-410'
set firewall name k8s-120-bastion-410 enable-default-log

# FROM k8s-120 TO app-720
set firewall name k8s-120-app-720 default-action 'drop'
set firewall name k8s-120-app-720 description 'From k8s-120 to app-720'
set firewall name k8s-120-app-720 enable-default-log

# From k8s-120 TO containers
set firewall name k8s-120-containers default-action 'drop'
set firewall name k8s-120-containers description 'From GUEST to containers'
set firewall name k8s-120-containers enable-default-log
set firewall name k8s-120-containers rule 1 action 'accept'
set firewall name k8s-120-containers rule 1 description 'Rule: accept_dns'
set firewall name k8s-120-containers rule 1 destination port 'domain,domain-s'
set firewall name k8s-120-containers rule 1 protocol 'tcp_udp'




# FROM iLO-550 TO unifi-mgmt-900
set firewall name iLO-550-unifi-mgmt-900 default-action 'drop'
set firewall name iLO-550-unifi-mgmt-900 description 'From iLO-550 to unifi-mgmt-900'
set firewall name iLO-550-unifi-mgmt-900 enable-default-log

# FROM iLO-550 TO unifi-frontend-910
set firewall name iLO-550-unifi-frontend-910 default-action 'drop'
set firewall name iLO-550-unifi-frontend-910 description 'From iLO-550 to unifi-frontend-910'
set firewall name iLO-550-unifi-frontend-910 enable-default-log

# FROM iLO-550 TO k8s-120
set firewall name iLO-550-k8s-120 default-action 'drop'
set firewall name iLO-550-k8s-120 description 'From iLO-550 to k8s-120'
set firewall name iLO-550-k8s-120 enable-default-log

# FROM iLO-550 TO pve-11
set firewall name iLO-550-pve-11 default-action 'drop'
set firewall name iLO-550-pve-11 description 'From iLO-550 to pve-11'
set firewall name iLO-550-pve-11 enable-default-log

# FROM iLO-550 TO seccam-610
set firewall name iLO-550-seccam-610 default-action 'drop'
set firewall name iLO-550-seccam-610 description 'From iLO-550 to seccam-610'
set firewall name iLO-550-seccam-610 enable-default-log

# FROM iLO-550 TO UISP-140
set firewall name iLO-550-UISP-140 default-action 'drop'
set firewall name iLO-550-UISP-140 description 'From iLO-550 to UISP-140'
set firewall name iLO-550-UISP-140 enable-default-log

# FROM iLO-550 TO ad-110
set firewall name iLO-550-ad-110 default-action 'drop'
set firewall name iLO-550-ad-110 description 'From iLO-550 to ad-110'
set firewall name iLO-550-ad-110 enable-default-log

# FROM iLO-550 TO bastion-410
set firewall name iLO-550-bastion-410 default-action 'drop'
set firewall name iLO-550-bastion-410 description 'From iLO-550 to bastion-410'
set firewall name iLO-550-bastion-410 enable-default-log

# FROM iLO-550 TO app-720
set firewall name iLO-550-app-720 default-action 'drop'
set firewall name iLO-550-app-720 description 'From iLO-550 to app-720'
set firewall name iLO-550-app-720 enable-default-log

# From iLO-550 TO containers
set firewall name iLO-550-containers default-action 'drop'
set firewall name iLO-550-containers description 'From iLO-550 to containers'
set firewall name iLO-550-containers enable-default-log
set firewall name iLO-550-containers rule 1 action 'accept'
set firewall name iLO-550-containers rule 1 description 'Rule: accept_dns'
set firewall name iLO-550-containers rule 1 destination port 'domain,domain-s'
set firewall name iLO-550-containers rule 1 protocol 'tcp_udp'




# FROM pve-11 TO unifi-mgmt-900
set firewall name pve-11-unifi-mgmt-900 default-action 'drop'
set firewall name pve-11-unifi-mgmt-900 description 'From pve-11 to unifi-mgmt-900'
set firewall name pve-11-unifi-mgmt-900 enable-default-log

# FROM pve-11 TO unifi-frontend-910
set firewall name pve-11-unifi-frontend-910 default-action 'drop'
set firewall name pve-11-unifi-frontend-910 description 'From pve-11 to unifi-frontend-910'
set firewall name pve-11-unifi-frontend-910 enable-default-log

# FROM pve-11 TO k8s-120
set firewall name pve-11-k8s-120 default-action 'drop'
set firewall name pve-11-k8s-120 description 'From pve-11 to k8s-120'
set firewall name pve-11-k8s-120 enable-default-log

# FROM pve-11 TO iLO-550
set firewall name pve-11-iLO-550 default-action 'drop'
set firewall name pve-11-iLO-550 description 'From pve-11 to iLO-550'
set firewall name pve-11-iLO-550 enable-default-log

# FROM pve-11 TO seccam-610
set firewall name pve-11-seccam-610 default-action 'drop'
set firewall name pve-11-seccam-610 description 'From pve-11 to seccam-610'
set firewall name pve-11-seccam-610 enable-default-log

# FROM pve-11 TO UISP-140
set firewall name pve-11-UISP-140 default-action 'drop'
set firewall name pve-11-UISP-140 description 'From pve-11 to UISP-140'
set firewall name pve-11-UISP-140 enable-default-log

# FROM pve-11 TO ad-110
set firewall name pve-11-ad-110 default-action 'drop'
set firewall name pve-11-ad-110 description 'From pve-11 to ad-110'
set firewall name pve-11-ad-110 enable-default-log

# FROM pve-11 TO bastion-410
set firewall name pve-11-bastion-410 default-action 'drop'
set firewall name pve-11-bastion-410 description 'From pve-11 to bastion-410'
set firewall name pve-11-bastion-410 enable-default-log

# FROM pve-11 TO app-720
set firewall name pve-11-app-720 default-action 'drop'
set firewall name pve-11-app-720 description 'From pve-11 to app-720'
set firewall name pve-11-app-720 enable-default-log

# From pve-11 TO containers
set firewall name pve-11-containers default-action 'drop'
set firewall name pve-11-containers description 'From pve-11 to containers'
set firewall name pve-11-containers enable-default-log
set firewall name pve-11-containers rule 1 action 'accept'
set firewall name pve-11-containers rule 1 description 'Rule: accept_dns'
set firewall name pve-11-containers rule 1 destination port 'domain,domain-s'
set firewall name pve-11-containers rule 1 protocol 'tcp_udp'




# FROM seccam-610 TO unifi-mgmt-900
set firewall name seccam-610-unifi-mgmt-900 default-action 'drop'
set firewall name seccam-610-unifi-mgmt-900 description 'From seccam-610 to unifi-mgmt-900'
set firewall name seccam-610-unifi-mgmt-900 enable-default-log

# FROM seccam-610 TO unifi-frontend-910
set firewall name seccam-610-unifi-frontend-910 default-action 'drop'
set firewall name seccam-610-unifi-frontend-910 description 'From seccam-610 to unifi-frontend-910'
set firewall name seccam-610-unifi-frontend-910 enable-default-log
set firewall name seccam-610-unifi-frontend-910 rule 1 action 'accept'
set firewall name seccam-610-unifi-frontend-910 rule 1 source group address-group 'blue_iris'
set firewall name seccam-610-unifi-frontend-910 rule 1 destination group address-group 'wyze_cameras'

# FROM seccam-610 TO k8s-120
set firewall name seccam-610-k8s-120 default-action 'drop'
set firewall name seccam-610-k8s-120 description 'From seccam-610 to k8s-120'
set firewall name seccam-610-k8s-120 enable-default-log

# FROM seccam-610 TO iLO-550
set firewall name seccam-610-iLO-550 default-action 'drop'
set firewall name seccam-610-iLO-550 description 'From seccam-610 to iLO-550'
set firewall name seccam-610-iLO-550 enable-default-log

# FROM seccam-610 TO pve-11
set firewall name seccam-610-pve-11 default-action 'drop'
set firewall name seccam-610-pve-11 description 'From seccam-610 to pve-11'
set firewall name seccam-610-pve-11 enable-default-log

# FROM seccam-610 TO UISP-140
set firewall name seccam-610-UISP-140 default-action 'drop'
set firewall name seccam-610-UISP-140 description 'From seccam-610 to UISP-140'
set firewall name seccam-610-UISP-140 enable-default-log

# FROM seccam-610 TO transit-10
set firewall name seccam-610-transit-10 default-action 'drop'
set firewall name seccam-610-transit-10 description 'From seccam-610 to transit-10'
set firewall name seccam-610-transit-10 enable-default-log
set firewall name seccam-610-transit-10 rule 1 action 'accept'
set firewall name seccam-610-transit-10 rule 1 source group address-group 'blue_iris'

# FROM seccam-610 TO ad-110
set firewall name seccam-610-ad-110 default-action 'drop'
set firewall name seccam-610-ad-110 description 'From seccam-610 to ad-110'
set firewall name seccam-610-ad-110 enable-default-log
set firewall name seccam-610-ad-110 rule 1 action 'accept'
set firewall name seccam-610-ad-110 rule 1 source group address-group 'blue_iris'
set firewall name seccam-610-ad-110 rule 1 destination group address-group 'domain_controllers'
set firewall name seccam-610-ad-110 rule 1 destination group port-group 'ad_auth_ports'
set firewall name seccam-610-ad-110 rule 1 protocol 'tcp_udp'

# FROM seccam-610 TO bastion-410
set firewall name seccam-610-bastion-410 default-action 'drop'
set firewall name seccam-610-bastion-410 description 'From seccam-610 to bastion-410'
set firewall name seccam-610-bastion-410 enable-default-log

#FROM seccam-610 TO app-720
set firewall name seccam-610-app-720 default-action 'drop'
set firewall name seccam-610-app-720 description 'From seccam-610 to app-720'
set firewall name seccam-610-app-720 enable-default-log
set firewall name seccam-610-app-720 rule 1 action 'accept'
set firewall name seccam-610-app-720 rule 1 description 'Rule: mosquitto_mqtt'
set firewall name seccam-610-app-720 rule 1 source group address-group 'blue_iris'
set firewall name seccam-610-app-720 rule 1 destination group address-group 'hass'
set firewall name seccam-610-app-720 rule 1 destination port '1883'
set firewall name seccam-610-app-720 rule 1 protocol 'tcp_udp'

# From seccam-610 TO containers
set firewall name seccam-610-containers default-action 'drop'
set firewall name seccam-610-containers description 'From seccam-610 to containers'
set firewall name seccam-610-containers enable-default-log
set firewall name seccam-610-containers rule 1 action 'accept'
set firewall name seccam-610-containers rule 1 description 'Rule: accept_dns'
set firewall name seccam-610-containers rule 1 destination port 'domain,domain-s'
set firewall name seccam-610-containers rule 1 protocol 'tcp_udp'



# FROM UISP-140 TO unifi-mgmt-900
set firewall name UISP-140-unifi-mgmt-900 default-action 'drop'
set firewall name UISP-140-unifi-mgmt-900 description 'From UISP-140 to unifi-mgmt-900'
set firewall name UISP-140-unifi-mgmt-900 enable-default-log

# FROM UISP-140 TO unifi-frontend-910
set firewall name UISP-140-unifi-frontend-910 default-action 'drop'
set firewall name UISP-140-unifi-frontend-910 description 'From UISP-140 to unifi-frontend-910'
set firewall name UISP-140-unifi-frontend-910 enable-default-log

# FROM UISP-140 TO k8s-120
set firewall name UISP-140-k8s-120 default-action 'drop'
set firewall name UISP-140-k8s-120 description 'From UISP-140 to k8s-120'
set firewall name UISP-140-k8s-120 enable-default-log

# FROM UISP-140 TO iLO-550
set firewall name UISP-140-iLO-550 default-action 'drop'
set firewall name UISP-140-iLO-550 description 'From UISP-140 to iLO-550'
set firewall name UISP-140-iLO-550 enable-default-log

# FROM UISP-140 TO pve-11
set firewall name UISP-140-pve-11 default-action 'drop'
set firewall name UISP-140-pve-11 description 'From UISP-140 to pve-11'
set firewall name UISP-140-pve-11 enable-default-log

# FROM UISP-140 TO seccam-610
set firewall name UISP-140-seccam-610 default-action 'drop'
set firewall name UISP-140-seccam-610 description 'From UISP-140 to seccam-610'
set firewall name UISP-140-seccam-610 enable-default-log

# FROM UISP-140 TO ad-110
set firewall name UISP-140-ad-110 default-action 'drop'
set firewall name UISP-140-ad-110 description 'From UISP-140 to ad-110'
set firewall name UISP-140-ad-110 enable-default-log

# FROM UISP-140 TO bastion-410
set firewall name UISP-140-bastion-410 default-action 'drop'
set firewall name UISP-140-bastion-410 description 'From UISP-140 to bastion-410'
set firewall name UISP-140-bastion-410 enable-default-log

# FROM UISP-140 TO app-720
set firewall name UISP-140-app-720 default-action 'drop'
set firewall name UISP-140-app-720 description 'From UISP-140 to app-720'
set firewall name UISP-140-app-720 enable-default-log

# From UISP-140 TO containers
set firewall name UISP-140-containers default-action 'drop'
set firewall name UISP-140-containers description 'From UISP-140 to containers'
set firewall name UISP-140-containers enable-default-log
set firewall name UISP-140-containers rule 1 action 'accept'
set firewall name UISP-140-containers rule 1 description 'Rule: accept_dns'
set firewall name UISP-140-containers rule 1 destination port 'domain,domain-s'
set firewall name UISP-140-containers rule 1 protocol 'tcp_udp'


# FROM transit-10 TO unifi-mgmt-900
set firewall name transit-10-unifi-mgmt-900 default-action 'drop'
set firewall name transit-10-unifi-mgmt-900 description 'From transit-10 to unifi-mgmt-900'
set firewall name transit-10-unifi-mgmt-900 enable-default-log
set firewall name transit-10-unifi-mgmt-900 rule 1 action 'accept'
set firewall name transit-10-unifi-mgmt-900 rule 1 description 'Rule: allow_udmpro'
set firewall name transit-10-unifi-mgmt-900 rule 1 source group address-group 'udmpro'
set firewall name transit-10-unifi-mgmt-900 rule 1 protocol 'tcp_udp'

# FROM transit-10 TO unifi-frontend-910
set firewall name transit-10-unifi-frontend-910 default-action 'drop'
set firewall name transit-10-unifi-frontend-910 description 'From transit-10 to unifi-frontend-910'
set firewall name transit-10-unifi-frontend-910 enable-default-log

# FROM transit-10 TO k8s-120
set firewall name transit-10-k8s-120 default-action 'drop'
set firewall name transit-10-k8s-120 description 'From transit-10 to k8s-120'
set firewall name transit-10-k8s-120 enable-default-log
set firewall name transit-10-k8s-120 rule 1 action 'accept'
set firewall name transit-10-k8s-120 rule 1 description 'Rule: allow_80_443'
set firewall name transit-10-k8s-120 rule 1 destination group address-group 'k8s_ingress'
set firewall name transit-10-k8s-120 rule 1 destination port '80,443'
set firewall name transit-10-k8s-120 rule 1 protocol 'tcp'

# FROM transit-10 TO iLO-550
set firewall name transit-10-iLO-550 default-action 'drop'
set firewall name transit-10-iLO-550 description 'From transit-10 to iLO-550'
set firewall name transit-10-iLO-550 enable-default-log

# FROM transit-10 TO pve-11
set firewall name transit-10-pve-11 default-action 'drop'
set firewall name transit-10-pve-11 description 'From transit-10 to pve-11'
set firewall name transit-10-pve-11 enable-default-log

# FROM transit-10 TO seccam-610
set firewall name transit-10-seccam-610 default-action 'drop'
set firewall name transit-10-seccam-610 description 'From transit-10 to seccam-610'
set firewall name transit-10-seccam-610 enable-default-log

# FROM transit-10 TO UISP-140
set firewall name transit-10-UISP-140 default-action 'drop'
set firewall name transit-10-UISP-140 description 'From transit-10 to UISP-140'
set firewall name transit-10-UISP-140 enable-default-log

# FROM transit-10 TO ad-110
set firewall name transit-10-ad-110 default-action 'drop'
set firewall name transit-10-ad-110 description 'From transit-10 to ad-110'
set firewall name transit-10-ad-110 enable-default-log

# FROM transit-10 TO bastion-410
set firewall name transit-10-bastion-410 default-action 'drop'
set firewall name transit-10-bastion-410 description 'From transit-10 to bastion-410'
set firewall name transit-10-bastion-410 enable-default-log

# FROM transit-10 TO app-720
set firewall name transit-10-app-720 default-action 'drop'
set firewall name transit-10-app-720 description 'From transit-10 to app-720'
set firewall name transit-10-app-720 enable-default-log

# From transit-10 TO containers
set firewall name transit-10-containers default-action 'drop'
set firewall name transit-10-containers description 'From transit-10 to containers'
set firewall name transit-10-containers enable-default-log
set firewall name transit-10-containers rule 1 action 'accept'
set firewall name transit-10-containers rule 1 description 'Rule: accept_dns'
set firewall name transit-10-containers rule 1 destination port 'domain,domain-s'
set firewall name transit-10-containers rule 1 protocol 'tcp_udp'


# FROM ad-110 TO unifi-mgmt-900
set firewall name ad-110-unifi-mgmt-900 default-action 'drop'
set firewall name ad-110-unifi-mgmt-900 description 'From ad-110 to unifi-mgmt-900'
set firewall name ad-110-unifi-mgmt-900 enable-default-log

# FROM ad-110 TO unifi-frontend-910
set firewall name ad-110-unifi-frontend-910 default-action 'drop'
set firewall name ad-110-unifi-frontend-910 description 'From ad-110 to unifi-frontend-910'
set firewall name ad-110-unifi-frontend-910 enable-default-log

# FROM ad-110 TO k8s-120
set firewall name ad-110-k8s-120 default-action 'drop'
set firewall name ad-110-k8s-120 description 'From ad-110 to k8s-120'
set firewall name ad-110-k8s-120 enable-default-log

# FROM ad-110 TO iLO-550
set firewall name ad-110-iLO-550 default-action 'drop'
set firewall name ad-110-iLO-550 description 'From ad-110 to iLO-550'
set firewall name ad-110-iLO-550 enable-default-log

# FROM ad-110 TO pve-11
set firewall name ad-110-pve-11 default-action 'drop'
set firewall name ad-110-pve-11 description 'From ad-110 to pve-11'
set firewall name ad-110-pve-11 enable-default-log

# FROM ad-110 TO seccam-610
set firewall name ad-110-seccam-610 default-action 'drop'
set firewall name ad-110-seccam-610 description 'From ad-110 to seccam-610'
set firewall name ad-110-seccam-610 enable-default-log

# FROM ad-110 TO UISP-140
set firewall name ad-110-UISP-140 default-action 'drop'
set firewall name ad-110-UISP-140 description 'From ad-110 to UISP-140'
set firewall name ad-110-UISP-140 enable-default-log

# FROM ad-110 TO bastion-410
set firewall name ad-110-bastion-410 default-action 'drop'
set firewall name ad-110-bastion-410 description 'From ad-110 to bastion-410'
set firewall name ad-110-bastion-410 enable-default-log

# FROM ad-110 TO app-720
set firewall name ad-110-app-720 default-action 'drop'
set firewall name ad-110-app-720 description 'From ad-110 to app-720'
set firewall name ad-110-app-720 enable-default-log

# From ad-110 TO containers
set firewall name ad-110-containers default-action 'drop'
set firewall name ad-110-containers description 'From ad-110 to containers'
set firewall name ad-110-containers enable-default-log
set firewall name ad-110-containers rule 1 action 'accept'
set firewall name ad-110-containers rule 1 description 'Rule: accept_dns'
set firewall name ad-110-containers rule 1 destination port 'domain,domain-s'
set firewall name ad-110-containers rule 1 protocol 'tcp_udp'



# FROM bastion-410 TO unifi-mgmt-900
set firewall name bastion-410-unifi-mgmt-900 default-action 'drop'
set firewall name bastion-410-unifi-mgmt-900 description 'From bastion-410 to unifi-mgmt-900'
set firewall name bastion-410-unifi-mgmt-900 enable-default-log

# FROM bastion-410 TO unifi-frontend-910
set firewall name bastion-410-unifi-frontend-910 default-action 'drop'
set firewall name bastion-410-unifi-frontend-910 description 'From bastion-410 to unifi-frontend-910'
set firewall name bastion-410-unifi-frontend-910 enable-default-log
set firewall name bastion-410-unifi-frontend-910 rule 1 action 'accept'
set firewall name bastion-410-unifi-frontend-910 rule 1 source group address-group 'windows_bastion'
set firewall name bastion-410-unifi-frontend-910 rule 1 destination group port-group 'powershell_remoting'
set firewall name bastion-410-unifi-frontend-910 rule 1 protocol 'tcp_udp'
set firewall name bastion-410-unifi-frontend-910 rule 2 action 'accept'
set firewall name bastion-410-unifi-frontend-910 rule 2 source group address-group 'windows_bastion'
set firewall name bastion-410-unifi-frontend-910 rule 2 destination port '3389'
set firewall name bastion-410-unifi-frontend-910 rule 2 protocol 'tcp'

# FROM bastion-410 TO k8s-120
set firewall name bastion-410-k8s-120 default-action 'drop'
set firewall name bastion-410-k8s-120 description 'From bastion-410 to k8s-120'
set firewall name bastion-410-k8s-120 enable-default-log

# FROM bastion-410 TO iLO-550
set firewall name bastion-410-iLO-550 default-action 'drop'
set firewall name bastion-410-iLO-550 description 'From bastion-410 to iLO-550'
set firewall name bastion-410-iLO-550 enable-default-log

# FROM bastion-410 TO pve-11
set firewall name bastion-410-pve-11 default-action 'drop'
set firewall name bastion-410-pve-11 description 'From bastion-410 to pve-11'
set firewall name bastion-410-pve-11 enable-default-log

# FROM bastion-410 TO seccam-610
set firewall name bastion-410-seccam-610 default-action 'drop'
set firewall name bastion-410-seccam-610 description 'From bastion-410 to seccam-610'
set firewall name bastion-410-seccam-610 enable-default-log
set firewall name bastion-410-seccam-610 rule 1 action 'accept'
set firewall name bastion-410-seccam-610 rule 1 source group address-group 'windows_bastion'
set firewall name bastion-410-seccam-610 rule 1 destination group port-group 'powershell_remoting'
set firewall name bastion-410-seccam-610 rule 1 protocol 'tcp_udp'
set firewall name bastion-410-seccam-610 rule 2 action 'accept'
set firewall name bastion-410-seccam-610 rule 2 source group address-group 'windows_bastion'
set firewall name bastion-410-seccam-610 rule 2 destination port '3389'
set firewall name bastion-410-seccam-610 rule 2 protocol 'tcp'

# FROM bastion-410 TO UISP-140
set firewall name bastion-410-UISP-140 default-action 'drop'
set firewall name bastion-410-UISP-140 description 'From bastion-410 to UISP-140'
set firewall name bastion-410-UISP-140 enable-default-log

# FROM bastion-410 TO ad-110
set firewall name bastion-410-ad-110 default-action 'drop'
set firewall name bastion-410-ad-110 description 'From bastion-410 to ad-110'
set firewall name bastion-410-ad-110 enable-default-log
set firewall name bastion-410-ad-110 rule 1 action 'accept'
set firewall name bastion-410-ad-110 rule 1 source group address-group 'windows_bastion'
set firewall name bastion-410-ad-110 rule 1 destination group port-group 'ad_auth_ports'
set firewall name bastion-410-ad-110 rule 1 protocol 'tcp_udp'
set firewall name bastion-410-ad-110 rule 2 action 'accept'
set firewall name bastion-410-ad-110 rule 2 source group address-group 'windows_bastion'
set firewall name bastion-410-ad-110 rule 2 destination port '3389'
set firewall name bastion-410-ad-110 rule 2 protocol 'tcp'
set firewall name bastion-410-ad-110 rule 3 action 'accept'
set firewall name bastion-410-ad-110 rule 3 source group address-group 'windows_bastion'
set firewall name bastion-410-ad-110 rule 3 destination group port-group 'powershell_remoting'
set firewall name bastion-410-ad-110 rule 3 protocol 'tcp_udp'
set firewall name bastion-410-ad-110 rule 4 action 'accept'
set firewall name bastion-410-ad-110 rule 4 source group address-group 'freenas'
set firewall name bastion-410-ad-110 rule 4 destination group port-group 'ad_auth_ports'
set firewall name bastion-410-ad-110 rule 4 protocol 'tcp_udp'

# FROM bastion-410 TO app-720
set firewall name bastion-410-app-720 default-action 'drop'
set firewall name bastion-410-app-720 description 'From bastion-410 to app-720'
set firewall name bastion-410-app-720 enable-default-log

# From bastion-410 TO containers
set firewall name bastion-410-containers default-action 'drop'
set firewall name bastion-410-containers description 'From bastion-410 to containers'
set firewall name bastion-410-containers enable-default-log
set firewall name bastion-410-containers rule 1 action 'accept'
set firewall name bastion-410-containers rule 1 description 'Rule: accept_dns'
set firewall name bastion-410-containers rule 1 destination port 'domain,domain-s'
set firewall name bastion-410-containers rule 1 protocol 'tcp_udp'



# FROM app-720 TO unifi-mgmt-900
set firewall name app-720-unifi-mgmt-900 default-action 'drop'
set firewall name app-720-unifi-mgmt-900 description 'From app-720 to unifi-mgmt-900'
set firewall name app-720-unifi-mgmt-900 enable-default-log
set firewall name app-720-unifi-mgmt-900 rule 1 action 'accept'
set firewall name app-720-unifi-mgmt-900 rule 1 description 'Rule: hass_to_udmpro'
set firewall name app-720-unifi-mgmt-900 rule 1 source group address-group 'hass'
set firewall name app-720-unifi-mgmt-900 rule 1 destination group address-group 'udmpro'
set firewall name app-720-unifi-mgmt-900 rule 1 destination port '80,443'
set firewall name app-720-unifi-mgmt-900 rule 1 protocol 'tcp_udp'

# FROM app-720 TO unifi-frontend-910
set firewall name app-720-unifi-frontend-910 default-action 'drop'
set firewall name app-720-unifi-frontend-910 description 'From app-720 to unifi-frontend-910'
set firewall name app-720-unifi-frontend-910 enable-default-log
set firewall name app-720-unifi-frontend-910 rule 1 action 'accept'
set firewall name app-720-unifi-frontend-910 rule 1 description 'Rule: hass_to_all_frontend'
set firewall name app-720-unifi-frontend-910 rule 1 source group address-group 'hass'
# FROM app-720 TO k8s-120
set firewall name app-720-k8s-120 default-action 'drop'
set firewall name app-720-k8s-120 description 'From app-720 to k8s-120'
set firewall name app-720-k8s-120 enable-default-log

# FROM app-720 TO iLO-550
set firewall name app-720-iLO-550 default-action 'drop'
set firewall name app-720-iLO-550 description 'From app-720 to iLO-550'
set firewall name app-720-iLO-550 enable-default-log

# FROM app-720 TO pve-11
set firewall name app-720-pve-11 default-action 'drop'
set firewall name app-720-pve-11 description 'From app-720 to pve-11'
set firewall name app-720-pve-11 enable-default-log

# FROM app-720 TO seccam-610
set firewall name app-720-seccam-610 default-action 'drop'
set firewall name app-720-seccam-610 description 'From app-720 to seccam-610'
set firewall name app-720-seccam-610 enable-default-log

# FROM app-720 TO UISP-140
set firewall name app-720-UISP-140 default-action 'drop'
set firewall name app-720-UISP-140 description 'From app-720 to UISP-140'
set firewall name app-720-UISP-140 enable-default-log


# FROM app-720 TO ad-110
set firewall name app-720-ad-110 default-action 'drop'
set firewall name app-720-ad-110 description 'From app-720 to ad-110'
set firewall name app-720-ad-110 enable-default-log

# FROM app-720 TO bastion-410
set firewall name app-720-bastion-410 default-action 'drop'
set firewall name app-720-bastion-410 description 'From app-720 to bastion-410'
set firewall name app-720-bastion-410 enable-default-log

# From app-720 TO containers
set firewall name app-720-containers default-action 'drop'
set firewall name app-720-containers description 'From app-720 to containers'
set firewall name app-720-containers enable-default-log
set firewall name app-720-containers rule 1 action 'accept'
set firewall name app-720-containers rule 1 description 'Rule: accept_dns'
set firewall name app-720-containers rule 1 destination port 'domain,domain-s'
set firewall name app-720-containers rule 1 protocol 'tcp_udp'


# FROM containers TO app-720
set firewall name containers-app-720 default-action 'drop'
set firewall name containers-app-720 description 'From containers to app-720'
set firewall name containers-app-720 enable-default-log

# FROM containers TO seccam-610
set firewall name containers-seccam-610 default-action 'drop'
set firewall name containers-seccam-610 description 'From containers to seccam-610'
set firewall name containers-seccam-610 enable-default-log
set firewall name containers-seccam-610 rule 1 action 'accept'
set firewall name containers-seccam-610 rule 1 description 'Rule: accept_biris'
set firewall name containers-seccam-610 rule 1 destination port '81'
set firewall name containers-seccam-610 rule 1 protocol 'tcp'

# FROM containers TO k8s-120
set firewall name containers-k8s-120 default-action 'drop'
set firewall name containers-k8s-120 description 'From containers to k8s-120'
set firewall name containers-k8s-120 enable-default-log
set firewall name containers-k8s-120 rule 1 action 'accept'
set firewall name containers-k8s-120 rule 1 description 'Rule: accept_ha_proxy'
set firewall name containers-k8s-120 rule 1 destination port '80,443'
set firewall name containers-k8s-120 rule 1 destination group address-group 'k8s_ingress_internal'
set firewall name containers-k8s-120 rule 1 protocol 'tcp'


#######################
##                   ##
##  Internet Access  ##
##                   ##
#######################

#FROM bastion-410 TO transit-10
set firewall name bastion-410-transit-10 default-action 'accept'
set firewall name bastion-410-transit-10 description 'From bastion-410 to transit-10'

#FROM k8s-120 TO transit-10
set firewall name k8s-120-transit-10 default-action 'accept'
set firewall name k8s-120-transit-10 description 'From k8s-120 to transit-10'

#FROM app-720 TO transit-10
set firewall name app-720-transit-10 default-action 'accept'
set firewall name app-720-transit-10 description 'From app-720 to transit-10'

#FROM pve-11 TO transit-10
set firewall name pve-11-transit-10 default-action 'accept'
set firewall name pve-11-transit-10 description 'From pve-11 to transit-10'

#FROM uisp-140 TO transit-10
set firewall name uisp-140-transit-10 default-action 'accept'
set firewall name uisp-140-transit-10 description 'From uisp-140 to transit-10'

#FROM ad-110 TO transit-10
set firewall name ad-110-transit-10 default-action 'accept'
set firewall name ad-110-transit-10 description 'From ad-110 to transit-10'

#FROM unifi-mgmt-900 TO transit-10
set firewall name unifi-mgmt-900-transit-10 default-action 'accept'
set firewall name unifi-mgmt-900-transit-10 description 'From unifi-mgmt-900 to transit-10'

#FROM unifi-frontend-910 TO transit-10
set firewall name unifi-frontend-910-transit-10 default-action 'accept'
set firewall name unifi-frontend-910-transit-10 description 'From unifi-frontend-910 to transit-10'

#FROM vpn TO transit-10
set firewall name vpn-transit-10 default-action 'accept'
set firewall name vpn-transit-10 description 'From vpn to transit-10'

#FROM vpn-mobile TO transit-10
set firewall name vpn-mobile-transit-10 default-action 'accept'
set firewall name vpn-mobile-transit-10 description 'From vpn-mobile to transit-10'

#FROM containers TO transit-10
set firewall name containers-transit-10 default-action 'accept'
set firewall name containers-transit-10 description 'From containers to transit-10'


##################################
##                              ##
## MFA VPN access to everything ##
##                              ##
##################################

#FROM vpn TO unifi-mgmt-900
set firewall name vpn-unifi-mgmt-900 default-action 'accept'
set firewall name vpn-unifi-mgmt-900 description 'From vpn to unifi-mgmt-900'

#FROM vpn TO unifi-frontend-910
set firewall name vpn-unifi-frontend-910 default-action 'accept'
set firewall name vpn-unifi-frontend-910 description 'From vpn to unifi-frontend-910'

#FROM vpn TO iLO-550
set firewall name vpn-iLO-550 default-action 'accept'
set firewall name vpn-iLO-550 description 'From vpn to iLO-550'

#FROM vpn TO pve-11
set firewall name vpn-pve-11 default-action 'accept'
set firewall name vpn-pve-11 description 'From vpn to pve-11'

#FROM vpn TO seccam-610
set firewall name vpn-seccam-610 default-action 'accept'
set firewall name vpn-seccam-610 description 'From vpn to seccam-610'

#FROM vpn TO UISP-140
set firewall name vpn-UISP-140 default-action 'accept'
set firewall name vpn-UISP-140 description 'From vpn to UISP-140'

#FROM vpn TO ad-110
set firewall name vpn-ad-110 default-action 'accept'
set firewall name vpn-ad-110 description 'From vpn to ad-110'

#FROM vpn TO bastion-410
set firewall name vpn-bastion-410 default-action 'accept'
set firewall name vpn-bastion-410 description 'From vpn to bastion-410'

#FROM vpn TO app-720
set firewall name vpn-app-720 default-action 'accept'
set firewall name vpn-app-720 description 'From vpn to app-720'

#FROM vpn TO k8s-120
set firewall name vpn-k8s-120 default-action 'accept'
set firewall name vpn-k8s-120 description 'From vpn to k8s-120'

#FROM vpn TO containers
set firewall name vpn-containers default-action 'accept'
set firewall name vpn-containers description 'From vpn to containers'


##################################
##                              ##
##     Always On VPN access     ##
##                              ##
##################################

#FROM vpn-mobile TO containers
set firewall name vpn-mobile-containers default-action 'drop'
set firewall name vpn-mobile-containers description 'From vpn-mobile to containers'
set firewall name vpn-mobile-containers rule 1 action 'accept'
set firewall name vpn-mobile-containers rule 1 description 'Rule: accept_http_https_to_haproxy_services'
set firewall name vpn-mobile-containers rule 1 destination group address-group 'haproxy_services'
set firewall name vpn-mobile-containers rule 1 destination port 'http,https'
set firewall name vpn-mobile-containers rule 1 protocol 'tcp'
set firewall name vpn-mobile-containers rule 2 action 'accept'
set firewall name vpn-mobile-containers rule 2 description 'Rule: accept_dns'
set firewall name vpn-mobile-containers rule 2 destination port 'domain,domain-s'
set firewall name vpn-mobile-containers rule 2 protocol 'tcp_udp'

#FROM vpn-mobile TO unifi-frontend-910
set firewall name vpn-mobile-unifi-frontend-910 default-action 'accept'
set firewall name vpn-mobile-unifi-frontend-910 description 'From vpn-mobile to unifi-frontend-910'

#################
#################
#################

# From GUEST to IOT
# set firewall name guest-iot default-action 'drop'
# set firewall name guest-iot description 'From GUEST to IOT'
# set firewall name guest-iot enable-default-log
# set firewall name guest-iot rule 1 action 'accept'
# set firewall name guest-iot rule 1 description 'Rule: accept_tcp_printer_from_allowed_devices'
# set firewall name guest-iot rule 1 destination group address-group 'printers'
# set firewall name guest-iot rule 1 destination port 'http,9100'
# set firewall name guest-iot rule 1 protocol 'tcp'
# set firewall name guest-iot rule 1 source group address-group 'printer_allowed'
# set firewall name guest-iot rule 2 action 'accept'
# set firewall name guest-iot rule 2 description 'Rule: accept_udp_printer_from_allowed_devices'
# set firewall name guest-iot rule 2 destination group address-group 'printers'
# set firewall name guest-iot rule 2 destination port '161'
# set firewall name guest-iot rule 2 protocol 'udp'
# set firewall name guest-iot rule 2 source group address-group 'printer_allowed'

# # From GUEST to LAN
# set firewall name guest-lan default-action 'drop'
# set firewall name guest-lan description 'From GUEST to LAN'
# set firewall name guest-lan enable-default-log

# # From GUEST to LOCAL
# set firewall name guest-local default-action 'drop'
# set firewall name guest-local description 'From GUEST to LOCAL'
# set firewall name guest-local enable-default-log
# set firewall name guest-local rule 1 action 'accept'
# set firewall name guest-local rule 1 description 'Rule: accept_dhcp'
# set firewall name guest-local rule 1 destination port '67,68'
# set firewall name guest-local rule 1 protocol 'udp'
# set firewall name guest-local rule 1 source port '67,68'

# # From GUEST to SERVERS
# set firewall name guest-servers default-action 'drop'
# set firewall name guest-servers description 'From GUEST to SERVERS'
# set firewall name guest-servers enable-default-log

# # From GUEST to CONTAINERS
# set firewall name guest-containers default-action 'drop'
# set firewall name guest-containers description 'From GUEST to CONTAINERS'
# set firewall name guest-containers enable-default-log
# set firewall name guest-containers rule 1 action 'accept'
# set firewall name guest-containers rule 1 description 'Rule: accept_dns'
# set firewall name guest-containers rule 1 destination port 'domain,domain-s'
# set firewall name guest-containers rule 1 protocol 'tcp_udp'

# # From GUEST to TRUSTED
# set firewall name guest-trusted default-action 'drop'
# set firewall name guest-trusted description 'From GUEST to TRUSTED'
# set firewall name guest-trusted enable-default-log

# # From GUEST to VIDEO
# set firewall name guest-video default-action 'drop'
# set firewall name guest-video description 'From GUEST to VIDEO'
# set firewall name guest-video enable-default-log

# # From GUEST to WAN
# set firewall name guest-wan default-action 'accept'
# set firewall name guest-wan description 'From GUEST to WAN'

# # From IOT to GUEST
# set firewall name iot-guest default-action 'drop'
# set firewall name iot-guest description 'From IOT to GUEST'
# set firewall name iot-guest enable-default-log

# # From IOT to LAN
# set firewall name iot-lan default-action 'drop'
# set firewall name iot-lan description 'From IOT to LAN'
# set firewall name iot-lan enable-default-log

# # From IOT to LOCAL
# set firewall name iot-local default-action 'drop'
# set firewall name iot-local description 'From IOT to LOCAL'
# set firewall name iot-local enable-default-log
# set firewall name iot-local rule 1 action 'accept'
# set firewall name iot-local rule 1 description 'Rule: accept_ssh'
# set firewall name iot-local rule 1 destination port 'ssh'
# set firewall name iot-local rule 1 protocol 'tcp'
# set firewall name iot-local rule 2 action 'accept'
# set firewall name iot-local rule 2 description 'Rule: accept_ntp'
# set firewall name iot-local rule 2 destination port 'ntp'
# set firewall name iot-local rule 2 protocol 'udp'
# set firewall name iot-local rule 3 action 'accept'
# set firewall name iot-local rule 3 description 'Rule: accept_dhcp'
# set firewall name iot-local rule 3 destination port '67,68'
# set firewall name iot-local rule 3 protocol 'udp'
# set firewall name iot-local rule 3 source port '67,68'
# set firewall name iot-local rule 4 action 'accept'
# set firewall name iot-local rule 4 description 'Rule: accept_igmp'
# set firewall name iot-local rule 4 protocol '2'
# set firewall name iot-local rule 5 action 'accept'
# set firewall name iot-local rule 5 description 'Rule: accept_mdns'
# set firewall name iot-local rule 5 destination port 'mdns'
# set firewall name iot-local rule 5 protocol 'udp'
# set firewall name iot-local rule 5 source port 'mdns'
# set firewall name iot-local rule 6 action 'accept'
# set firewall name iot-local rule 6 description 'Rule: accept_discovery_from_sonos_players'
# set firewall name iot-local rule 6 destination port '1900,1901,1902'
# set firewall name iot-local rule 6 protocol 'udp'
# set firewall name iot-local rule 6 source group address-group 'sonos_players'
# set firewall name iot-local rule 7 action 'accept'
# set firewall name iot-local rule 7 description 'Rule: accept_discovery_from_sonos_controllers'
# set firewall name iot-local rule 7 destination port '1900,1901,1902,57621'
# set firewall name iot-local rule 7 protocol 'udp'
# set firewall name iot-local rule 7 source group address-group 'sonos_controllers'

# # From IOT to SERVERS
# set firewall name iot-servers default-action 'drop'
# set firewall name iot-servers description 'From IOT to SERVERS'
# set firewall name iot-servers enable-default-log
# set firewall name iot-servers rule 1 action 'accept'
# set firewall name iot-servers rule 1 description 'Rule: accept_nas_smb_from_scanners'
# set firewall name iot-servers rule 1 destination group address-group 'nas'
# set firewall name iot-servers rule 1 destination port 'microsoft-ds'
# set firewall name iot-servers rule 1 protocol 'tcp'
# set firewall name iot-servers rule 1 source group address-group 'scanners'
# set firewall name iot-servers rule 2 action 'accept'
# set firewall name iot-servers rule 2 description 'Rule: accept_plex_from_plex_clients'
# set firewall name iot-servers rule 2 destination group address-group 'k8s_plex'
# set firewall name iot-servers rule 2 destination port '32400'
# set firewall name iot-servers rule 2 protocol 'tcp'
# set firewall name iot-servers rule 2 source group address-group 'plex_clients'
# set firewall name iot-servers rule 3 action 'accept'
# set firewall name iot-servers rule 3 description 'Rule: accept_jellyfin_from_jellyfin_clients'
# set firewall name iot-servers rule 3 destination group address-group 'k8s_jellyfin'
# set firewall name iot-servers rule 3 destination port '8096'
# set firewall name iot-servers rule 3 protocol 'tcp'
# set firewall name iot-servers rule 3 source group address-group 'jellyfin_clients'
# set firewall name iot-servers rule 4 action 'accept'
# set firewall name iot-servers rule 4 description 'Rule: accept_mqtt_from_mqtt_clients'
# set firewall name iot-servers rule 4 destination group address-group 'k8s_mqtt'
# set firewall name iot-servers rule 4 destination port '1883'
# set firewall name iot-servers rule 4 protocol 'tcp'
# set firewall name iot-servers rule 4 source group address-group 'mqtt_clients'
# set firewall name iot-servers rule 5 action 'accept'
# set firewall name iot-servers rule 5 description 'Rule: accept_mqtt_from_esp'
# set firewall name iot-servers rule 5 destination group address-group 'k8s_mqtt'
# set firewall name iot-servers rule 5 destination port '1883'
# set firewall name iot-servers rule 5 protocol 'tcp'
# set firewall name iot-servers rule 5 source group address-group 'esp'
# set firewall name iot-servers rule 6 action 'accept'
# set firewall name iot-servers rule 6 description 'Rule: accept_k8s_ingress_from_sonos_players'
# set firewall name iot-servers rule 6 destination group address-group 'k8s_ingress'
# set firewall name iot-servers rule 6 destination port 'http,https'
# set firewall name iot-servers rule 6 protocol 'tcp'
# set firewall name iot-servers rule 6 source group address-group 'sonos_players'
# set firewall name iot-servers rule 7 action 'accept'
# set firewall name iot-servers rule 7 description 'Rule: accept_k8s_ingress_from_ereaders'
# set firewall name iot-servers rule 7 destination group address-group 'k8s_ingress'
# set firewall name iot-servers rule 7 destination port 'http,https'
# set firewall name iot-servers rule 7 protocol 'tcp'
# set firewall name iot-servers rule 7 source group address-group 'ereaders'
# set firewall name iot-servers rule 8 action 'accept'
# set firewall name iot-servers rule 8 description 'Rule: accept_k8s_ingress_from_wall_displays'
# set firewall name iot-servers rule 8 destination group address-group 'k8s_ingress'
# set firewall name iot-servers rule 8 destination port 'http,https'
# set firewall name iot-servers rule 8 protocol 'tcp'
# set firewall name iot-servers rule 8 source group address-group 'wall_displays'
# set firewall name iot-servers rule 9 action 'accept'
# set firewall name iot-servers rule 9 description 'Rule: accept_k8s_ingress_from_allowed_devices'
# set firewall name iot-servers rule 9 destination group address-group 'k8s_ingress'
# set firewall name iot-servers rule 9 destination port 'http,https'
# set firewall name iot-servers rule 9 protocol 'tcp'
# set firewall name iot-servers rule 9 source group address-group 'k8s_ingress_allowed'
# set firewall name iot-servers rule 10 action 'accept'
# set firewall name iot-servers rule 10 description 'Rule: accept_vector_journald_from_allowed_devices'
# set firewall name iot-servers rule 10 destination group address-group 'k8s_vector_aggregator'
# set firewall name iot-servers rule 10 destination port '6002'
# set firewall name iot-servers rule 10 protocol 'tcp'
# set firewall name iot-servers rule 10 source group address-group 'vector_journald_allowed'

# # From IOT to CONTAINERS
# set firewall name iot-containers default-action 'accept'
# set firewall name iot-containers description 'From IOT to CONTAINERS'
# set firewall name iot-containers rule 1 action 'accept'
# set firewall name iot-containers rule 1 description 'Rule: accept_dns'
# set firewall name iot-containers rule 1 destination port 'domain,domain-s'
# set firewall name iot-containers rule 1 protocol 'tcp_udp'

# # From IOT to TRUSTED
# set firewall name iot-trusted default-action 'drop'
# set firewall name iot-trusted description 'From IOT to TRUSTED'
# set firewall name iot-trusted enable-default-log
# set firewall name iot-trusted rule 1 action 'accept'
# set firewall name iot-trusted rule 1 description 'Rule: accept_udp_from_sonos_players_to_sonos_controllers'
# set firewall name iot-trusted rule 1 destination group address-group 'sonos_controllers'
# set firewall name iot-trusted rule 1 destination port '30000-65535'
# set firewall name iot-trusted rule 1 protocol 'udp'
# set firewall name iot-trusted rule 1 source group address-group 'sonos_players'
# set firewall name iot-trusted rule 2 action 'accept'
# set firewall name iot-trusted rule 2 description 'Rule: accept_tcp_from_sonos_players_to_sonos_controllers'
# set firewall name iot-trusted rule 2 destination group address-group 'sonos_controllers'
# set firewall name iot-trusted rule 2 destination port '1400,3400,3401,3500,30000-65535'
# set firewall name iot-trusted rule 2 protocol 'tcp'
# set firewall name iot-trusted rule 2 source group address-group 'sonos_players'

# # From IOT to VIDEO
# set firewall name iot-video default-action 'drop'
# set firewall name iot-video description 'From IOT to VIDEO'
# set firewall name iot-video enable-default-log

# # From IOT to WAN
# set firewall name iot-wan default-action 'accept'
# set firewall name iot-wan description 'From IOT to WAN'

# # From LAN to GUEST
# set firewall name lan-guest default-action 'drop'
# set firewall name lan-guest description 'From LAN to GUEST'
# set firewall name lan-guest enable-default-log

# # From LAN to GUEST
# set firewall name lan-iot default-action 'drop'
# set firewall name lan-iot description 'From LAN to IOT'
# set firewall name lan-iot enable-default-log

# # From LAN to LOCAL
# set firewall name lan-local default-action 'drop'
# set firewall name lan-local description 'From LAN to LOCAL'
# set firewall name lan-local enable-default-log
# set firewall name lan-local rule 1 action 'accept'
# set firewall name lan-local rule 1 description 'Rule: accept_ssh'
# set firewall name lan-local rule 1 destination port 'ssh'
# set firewall name lan-local rule 1 protocol 'tcp'
# set firewall name lan-local rule 2 action 'accept'
# set firewall name lan-local rule 2 description 'Rule: accept_ntp'
# set firewall name lan-local rule 2 destination port 'ntp'
# set firewall name lan-local rule 2 protocol 'udp'
# set firewall name lan-local rule 3 action 'accept'
# set firewall name lan-local rule 3 description 'Rule: accept_dhcp'
# set firewall name lan-local rule 3 destination port '67,68'
# set firewall name lan-local rule 3 protocol 'udp'
# set firewall name lan-local rule 3 source port '67,68'

# # From LAN to SERVERS
# set firewall name lan-servers default-action 'drop'
# set firewall name lan-servers description 'From LAN to SERVERS'
# set firewall name lan-servers enable-default-log
# set firewall name lan-servers rule 1 action 'accept'
# set firewall name lan-servers rule 1 description 'Rule: accept_icmp'
# set firewall name lan-servers rule 1 protocol 'icmp'

# # From LAN to CONTAINERS
# set firewall name lan-containers default-action 'accept'
# set firewall name lan-containers description 'From LAN to CONTAINERS'
# set firewall name lan-containers rule 1 action 'accept'
# set firewall name lan-containers rule 1 description 'Rule: accept_dns'
# set firewall name lan-containers rule 1 destination port 'domain,domain-s'
# set firewall name lan-containers rule 1 protocol 'tcp_udp'

# # From LAN to TRUSTED
# set firewall name lan-trusted default-action 'drop'
# set firewall name lan-trusted description 'From LAN to TRUSTED'
# set firewall name lan-trusted enable-default-log

# # From LAN to VIDEO
# set firewall name lan-video default-action 'drop'
# set firewall name lan-video description 'From LAN to VIDEO'
# set firewall name lan-video enable-default-log

# # From LAN to WAN
# set firewall name lan-wan default-action 'accept'
# set firewall name lan-wan description 'From LAN to WAN'

# # From LOCAL to GUEST
# set firewall name local-guest default-action 'drop'
# set firewall name local-guest description 'From LOCAL to GUEST'
# set firewall name local-guest enable-default-log

# # From LOCAL to IOT
# set firewall name local-iot default-action 'drop'
# set firewall name local-iot description 'From LOCAL to IOT'
# set firewall name local-iot enable-default-log
# set firewall name local-iot rule 1 action 'accept'
# set firewall name local-iot rule 1 description 'Rule: accept_igmp'
# set firewall name local-iot rule 1 protocol '2'
# set firewall name local-iot rule 2 action 'accept'
# set firewall name local-iot rule 2 description 'Rule: accept_mdns'
# set firewall name local-iot rule 2 destination port 'mdns'
# set firewall name local-iot rule 2 protocol 'udp'
# set firewall name local-iot rule 2 source port 'mdns'
# set firewall name local-iot rule 3 action 'accept'
# set firewall name local-iot rule 3 description 'Rule: accept_discovery_from_sonos_controllers'
# set firewall name local-iot rule 3 destination port '1900,1901,1902,57621'
# set firewall name local-iot rule 3 protocol 'udp'
# set firewall name local-iot rule 3 source group address-group 'sonos_controllers'

# # From LOCAL to LAN
# set firewall name local-lan default-action 'drop'
# set firewall name local-lan description 'From LOCAL to LAN'
# set firewall name local-lan enable-default-log

# # From LOCAL to SERVERS
# set firewall name local-servers default-action 'drop'
# set firewall name local-servers description 'From LOCAL to SERVERS'
# set firewall name local-servers enable-default-log
# set firewall name local-servers rule 1 action 'accept'
# set firewall name local-servers rule 1 description 'Rule: accept_bgp'
# set firewall name local-servers rule 1 destination port 'bgp'
# set firewall name local-servers rule 1 protocol 'tcp'
# set firewall name local-servers rule 2 action 'accept'
# set firewall name local-servers rule 2 description 'Rule: accept_k8s_api'
# set firewall name local-servers rule 2 destination port '6443'
# set firewall name local-servers rule 2 protocol 'tcp'
# set firewall name local-servers rule 3 action 'accept'
# set firewall name local-servers rule 3 description 'Rule: accept_dns'
# set firewall name local-servers rule 3 destination port 'domain,domain-s'
# set firewall name local-servers rule 3 protocol 'tcp_udp'
# set firewall name local-servers rule 4 action 'accept'
# set firewall name local-servers rule 4 description 'Rule: accept_vector_syslog'
# set firewall name local-servers rule 4 destination group address-group 'k8s_vector_aggregator'
# set firewall name local-servers rule 4 destination port '6001'
# set firewall name local-servers rule 4 protocol 'tcp'

# # From LOCAL to CONTAINERS
# set firewall name local-containers default-action 'accept'
# set firewall name local-containers description 'From LOCAL to CONTAINERS'
# set firewall name local-containers rule 1 action 'accept'
# set firewall name local-containers rule 1 description 'Rule: accept_dns'
# set firewall name local-containers rule 1 destination port 'domain,domain-s'
# set firewall name local-containers rule 1 protocol 'tcp_udp'

# # From LOCAL to TRUSTED
# set firewall name local-trusted default-action 'drop'
# set firewall name local-trusted description 'From LOCAL to TRUSTED'
# set firewall name local-trusted enable-default-log
# set firewall name local-trusted rule 1 action 'accept'
# set firewall name local-trusted rule 1 description 'Rule: accept_igmp'
# set firewall name local-trusted rule 1 protocol '2'
# set firewall name local-trusted rule 2 action 'accept'
# set firewall name local-trusted rule 2 description 'Rule: accept_mdns'
# set firewall name local-trusted rule 2 destination port 'mdns'
# set firewall name local-trusted rule 2 protocol 'udp'
# set firewall name local-trusted rule 2 source port 'mdns'
# set firewall name local-trusted rule 3 action 'accept'
# set firewall name local-trusted rule 3 description 'Rule: accept_discovery_from_sonos_players'
# set firewall name local-trusted rule 3 destination port '1900,1901,1902'
# set firewall name local-trusted rule 3 protocol 'udp'
# set firewall name local-trusted rule 3 source group address-group 'sonos_players'

# # From LOCAL to VIDEO
# set firewall name local-video default-action 'drop'
# set firewall name local-video description 'From LOCAL to VIDEO'
# set firewall name local-video enable-default-log

# # From LOCAL to WAN
# set firewall name local-wan default-action 'accept'
# set firewall name local-wan description 'From LOCAL to WAN'

# # From SERVERS to GUEST
# set firewall name servers-guest default-action 'drop'
# set firewall name servers-guest description 'From SERVERS to GUEST'
# set firewall name servers-guest enable-default-log

# # From SERVERS to IOT
# set firewall name servers-iot default-action 'drop'
# set firewall name servers-iot description 'From SERVERS to IOT'
# set firewall name servers-iot enable-default-log
# set firewall name servers-iot rule 1 action 'accept'
# set firewall name servers-iot rule 1 description 'Rule: accept_icmp'
# set firewall name servers-iot rule 1 protocol 'icmp'
# set firewall name servers-iot rule 2 action 'accept'
# set firewall name servers-iot rule 2 description 'Rule: accept_p1reader_from_k8s_nodes'
# set firewall name servers-iot rule 2 destination port '8088'
# set firewall name servers-iot rule 2 protocol 'tcp'
# set firewall name servers-iot rule 2 source group address-group 'k8s_nodes'
# set firewall name servers-iot rule 3 action 'accept'
# set firewall name servers-iot rule 3 description 'Rule: accept_adb_from_k8s_nodes'
# set firewall name servers-iot rule 3 destination group address-group 'android_tv_players'
# set firewall name servers-iot rule 3 destination port '5555'
# set firewall name servers-iot rule 3 protocol 'tcp'
# set firewall name servers-iot rule 3 source group address-group 'k8s_nodes'
# set firewall name servers-iot rule 4 action 'accept'
# set firewall name servers-iot rule 4 description 'Rule: accept_3d_printer_control_from_k8s_nodes'
# set firewall name servers-iot rule 4 destination group address-group '3d_printer_controllers'
# set firewall name servers-iot rule 4 destination port '7125'
# set firewall name servers-iot rule 4 protocol 'tcp'
# set firewall name servers-iot rule 4 source group address-group 'k8s_nodes'
# set firewall name servers-iot rule 5 action 'accept'
# set firewall name servers-iot rule 5 description 'Rule: accept_k8s_nodes'
# set firewall name servers-iot rule 5 protocol 'tcp'
# set firewall name servers-iot rule 5 source group address-group 'k8s_nodes'

# # From SERVERS to LAN
# set firewall name servers-lan default-action 'drop'
# set firewall name servers-lan description 'From SERVERS to LAN'
# set firewall name servers-lan enable-default-log
# set firewall name servers-lan rule 1 action 'accept'
# set firewall name servers-lan rule 1 description 'Rule: accept_icmp'
# set firewall name servers-lan rule 1 protocol 'icmp'

# # From SERVERS to LOCAL
# set firewall name servers-local default-action 'drop'
# set firewall name servers-local description 'From SERVERS to LOCAL'
# set firewall name servers-local enable-default-log
# set firewall name servers-local rule 1 action 'accept'
# set firewall name servers-local rule 1 description 'Rule: accept_icmp'
# set firewall name servers-local rule 1 protocol 'icmp'
# set firewall name servers-local rule 2 action 'accept'
# set firewall name servers-local rule 2 description 'Rule: accept_ntp'
# set firewall name servers-local rule 2 destination port 'ntp'
# set firewall name servers-local rule 2 protocol 'udp'
# set firewall name servers-local rule 3 action 'accept'
# set firewall name servers-local rule 3 description 'Rule: accept_dhcp'
# set firewall name servers-local rule 3 destination port '67,68'
# set firewall name servers-local rule 3 protocol 'udp'
# set firewall name servers-local rule 3 source port '67,68'
# set firewall name servers-local rule 4 action 'accept'
# set firewall name servers-local rule 4 description 'Rule: accept_bgp'
# set firewall name servers-local rule 4 destination port 'bgp'
# set firewall name servers-local rule 4 protocol 'tcp'
# set firewall name servers-local rule 5 action 'accept'
# set firewall name servers-local rule 5 description 'Rule: accept_tftp'
# set firewall name servers-local rule 5 destination port '69'
# set firewall name servers-local rule 5 protocol 'udp'
# set firewall name servers-local rule 6 action 'accept'
# set firewall name servers-local rule 6 description 'Rule: accept_node_exporter_from_k8s_nodes'
# set firewall name servers-local rule 6 destination port '9100'
# set firewall name servers-local rule 6 protocol 'tcp'
# set firewall name servers-local rule 6 source group address-group 'k8s_nodes'
# set firewall name servers-local rule 7 action 'accept'
# set firewall name servers-local rule 7 description 'Rule: accept_speedtest_exporter_from_k8s_nodes'
# set firewall name servers-local rule 7 destination port '9798'
# set firewall name servers-local rule 7 protocol 'tcp'
# set firewall name servers-local rule 7 source group address-group 'k8s_nodes'
# # TODO: Needed because of MetalLB?
# set firewall name servers-local rule 8 action 'accept'
# set firewall name servers-local rule 8 description 'Rule: accept_bgp_2'
# set firewall name servers-local rule 8 destination port '3784'
# set firewall name servers-local rule 8 protocol 'udp'
# set firewall name servers-local rule 8 source group address-group 'k8s_nodes'

# # From SERVERS to CONTAINERS
# set firewall name servers-containers default-action 'accept'
# set firewall name servers-containers description 'From SERVERS to CONTAINERS'
# set firewall name servers-containers enable-default-log
# set firewall name servers-containers rule 1 action 'accept'
# set firewall name servers-containers rule 1 description 'Rule: accept_dns'
# set firewall name servers-containers rule 1 destination port 'domain,domain-s'
# set firewall name servers-containers rule 1 protocol 'tcp_udp'
# set firewall name servers-containers rule 2 action 'accept'
# set firewall name servers-containers rule 2 description 'Rule: accept_k8s_api'
# set firewall name servers-containers rule 2 destination port '6443'
# set firewall name servers-containers rule 2 protocol 'tcp'

# # From SERVERS to TRUSTED
# set firewall name servers-trusted default-action 'drop'
# set firewall name servers-trusted description 'From SERVERS to TRUSTED'
# set firewall name servers-trusted enable-default-log
# set firewall name servers-trusted rule 1 action 'accept'
# set firewall name servers-trusted rule 1 description 'Rule: accept_icmp'
# set firewall name servers-trusted rule 1 protocol 'icmp'

# # From SERVERS to VIDEO
# set firewall name servers-video default-action 'drop'
# set firewall name servers-video description 'From SERVERS to VIDEO'
# set firewall name servers-video enable-default-log
# set firewall name servers-video rule 1 action 'accept'
# set firewall name servers-video rule 1 description 'Rule: accept_icmp'
# set firewall name servers-video rule 1 protocol 'icmp'
# set firewall name servers-video rule 2 action 'accept'
# set firewall name servers-video rule 2 description 'Rule: accept_k8s_nodes'
# set firewall name servers-video rule 2 protocol 'tcp_udp'
# set firewall name servers-video rule 2 source group address-group 'k8s_nodes'

# # From SERVERS to WAN
# set firewall name servers-wan default-action 'accept'
# set firewall name servers-wan description 'From SERVERS to WAN'

# # From CONTAINERS to GUEST
# set firewall name containers-guest default-action 'drop'
# set firewall name containers-guest description 'From CONTAINERS to GUEST'
# set firewall name containers-guest enable-default-log

# # From CONTAINERS to IOT
# set firewall name containers-iot default-action 'drop'
# set firewall name containers-iot description 'From CONTAINERS to IOT'
# set firewall name containers-iot enable-default-log

# # From CONTAINERS to LAN
# set firewall name containers-lan default-action 'drop'
# set firewall name containers-lan description 'From CONTAINERS to LAN'
# set firewall name containers-lan enable-default-log

# # From CONTAINERS to LOCAL
# set firewall name containers-local default-action 'drop'
# set firewall name containers-local description 'From CONTAINERS to LOCAL'
# set firewall name containers-local enable-default-log
# set firewall name containers-local rule 1 action 'accept'
# set firewall name containers-local rule 1 description 'Rule: accept_ntp'
# set firewall name containers-local rule 1 destination port 'ntp'
# set firewall name containers-local rule 1 protocol 'udp'
# set firewall name containers-local rule 2 action 'accept'
# set firewall name containers-local rule 2 description 'Rule: accept_dhcp'
# set firewall name containers-local rule 2 destination port '67,68'
# set firewall name containers-local rule 2 protocol 'udp'
# set firewall name containers-local rule 2 source port '67,68'

# # From CONTAINERS to SERVERS
# set firewall name containers-servers default-action 'accept'
# set firewall name containers-servers description 'From CONTAINERS to SERVERS'
# set firewall name containers-servers rule 1 action 'accept'
# set firewall name containers-servers rule 1 description 'Rule: accept_icmp'
# set firewall name containers-servers rule 1 protocol 'icmp'

# # From CONTAINERS to TRUSTED
# set firewall name containers-trusted default-action 'drop'
# set firewall name containers-trusted description 'From CONTAINERS to TRUSTED'
# set firewall name containers-trusted enable-default-log

# # From CONTAINERS to VIDEO
# set firewall name containers-video default-action 'drop'
# set firewall name containers-video description 'From CONTAINERS to VIDEO'
# set firewall name containers-video enable-default-log

# # From CONTAINERS to WAN
# set firewall name containers-wan default-action 'accept'
# set firewall name containers-wan description 'From CONTAINERS to WAN'

# # From TRUSTED to GUEST
# set firewall name trusted-guest default-action 'drop'
# set firewall name trusted-guest description 'From TRUSTED to GUEST'
# set firewall name trusted-guest enable-default-log

# # From TRUSTED to IOT
# set firewall name trusted-iot default-action 'accept'
# set firewall name trusted-iot description 'From TRUSTED to IOT'
# set firewall name trusted-iot rule 1 action 'accept'
# set firewall name trusted-iot rule 1 description 'Rule: accept_icmp'
# set firewall name trusted-iot rule 1 protocol 'icmp'
# set firewall name trusted-iot rule 2 action 'accept'
# set firewall name trusted-iot rule 2 description 'Rule: accept_app_control_from_sonos_controllers_tcp'
# set firewall name trusted-iot rule 2 destination port '80,443,445,1400,3400,3401,3500,4070,4444'
# set firewall name trusted-iot rule 2 protocol 'tcp'
# set firewall name trusted-iot rule 2 source group address-group 'sonos_controllers'
# set firewall name trusted-iot rule 3 action 'accept'
# set firewall name trusted-iot rule 3 description 'Rule: accept_app_control_from_sonos_controllers_udp'
# set firewall name trusted-iot rule 3 destination port '136-139,1900-1901,2869,10243,10280-10284,5353,6969'
# set firewall name trusted-iot rule 3 protocol 'udp'
# set firewall name trusted-iot rule 3 source group address-group 'sonos_controllers'

# # From TRUSTED to LAN
# set firewall name trusted-lan default-action 'accept'
# set firewall name trusted-lan description 'From TRUSTED to LAN'

# # From TRUSTED to LOCAL
# set firewall name trusted-local default-action 'drop'
# set firewall name trusted-local description 'From TRUSTED to LOCAL'
# set firewall name trusted-local enable-default-log
# set firewall name trusted-local rule 1 action 'accept'
# set firewall name trusted-local rule 1 description 'Rule: accept_icmp'
# set firewall name trusted-local rule 1 protocol 'icmp'
# set firewall name trusted-local rule 2 action 'accept'
# set firewall name trusted-local rule 2 description 'Rule: accept_ssh'
# set firewall name trusted-local rule 2 destination port 'ssh'
# set firewall name trusted-local rule 2 protocol 'tcp'
# set firewall name trusted-local rule 3 action 'accept'
# set firewall name trusted-local rule 3 description 'Rule: accept_ntp'
# set firewall name trusted-local rule 3 destination port 'ntp'
# set firewall name trusted-local rule 3 protocol 'udp'
# set firewall name trusted-local rule 4 action 'accept'
# set firewall name trusted-local rule 4 description 'Rule: accept_dhcp'
# set firewall name trusted-local rule 4 destination port '67,68'
# set firewall name trusted-local rule 4 protocol 'udp'
# set firewall name trusted-local rule 4 source port '67,68'
# set firewall name trusted-local rule 5 action 'accept'
# set firewall name trusted-local rule 5 description 'Rule: accept_igmp'
# set firewall name trusted-local rule 5 protocol '2'
# set firewall name trusted-local rule 6 action 'accept'
# set firewall name trusted-local rule 6 description 'Rule: accept_mdns'
# set firewall name trusted-local rule 6 destination port 'mdns'
# set firewall name trusted-local rule 6 protocol 'udp'
# set firewall name trusted-local rule 6 source port 'mdns'
# set firewall name trusted-local rule 7 action 'accept'
# set firewall name trusted-local rule 7 description 'Rule: accept_wireguard'
# set firewall name trusted-local rule 7 destination port '51820'
# set firewall name trusted-local rule 7 protocol 'udp'
# set firewall name trusted-local rule 8 action 'accept'
# set firewall name trusted-local rule 8 description 'Rule: accept_vyos_api'
# set firewall name trusted-local rule 8 destination port '8443'
# set firewall name trusted-local rule 8 protocol 'tcp'
# set firewall name trusted-local rule 9 action 'accept'
# set firewall name trusted-local rule 9 description 'Rule: accept_discovery_from_sonos_players'
# set firewall name trusted-local rule 9 destination port '1900,1901,1902'
# set firewall name trusted-local rule 9 protocol 'udp'
# set firewall name trusted-local rule 9 source group address-group 'sonos_players'
# set firewall name trusted-local rule 10 action 'accept'
# set firewall name trusted-local rule 10 description 'Rule: accept_discovery_from_sonos_controllers'
# set firewall name trusted-local rule 10 destination port '1900,1901,1902,57621'
# set firewall name trusted-local rule 10 protocol 'udp'
# set firewall name trusted-local rule 10 source group address-group 'sonos_controllers'

# # From TRUSTED to SERVERS
# set firewall name trusted-servers default-action 'accept'
# set firewall name trusted-servers description 'From TRUSTED to SERVERS'
# set firewall name trusted-servers rule 1 action 'accept'
# set firewall name trusted-servers rule 1 description 'Rule: accept_icmp'
# set firewall name trusted-servers rule 1 protocol 'icmp'

# # From TRUSTED to CONTAINERS
# set firewall name trusted-containers default-action 'accept'
# set firewall name trusted-containers description 'From TRUSTED to CONTAINERS'
# set firewall name trusted-containers rule 1 action 'accept'
# set firewall name trusted-containers rule 1 description 'Rule: accept_dns'
# set firewall name trusted-containers rule 1 destination port 'domain,domain-s'
# set firewall name trusted-containers rule 1 protocol 'tcp_udp'

# # From TRUSTED to VIDEO
# set firewall name trusted-video default-action 'accept'
# set firewall name trusted-video description 'From TRUSTED to VIDEO'
# set firewall name trusted-video rule 1 action 'accept'
# set firewall name trusted-video rule 1 description 'Rule: accept_icmp'
# set firewall name trusted-video rule 1 protocol 'icmp'

# # From TRUSTED to WAN
# set firewall name trusted-wan default-action 'accept'
# set firewall name trusted-wan description 'From TRUSTED to WAN'

# # From VIDEO to GUEST
# set firewall name video-guest default-action 'drop'
# set firewall name video-guest description 'From VIDEO to GUEST'
# set firewall name video-guest enable-default-log

# # From VIDEO to IOT
# set firewall name video-iot default-action 'drop'
# set firewall name video-iot description 'From VIDEO to IOT'
# set firewall name video-iot enable-default-log

# # From VIDEO to LAN
# set firewall name video-lan default-action 'drop'
# set firewall name video-lan description 'From VIDEO to LAN'
# set firewall name video-lan enable-default-log

# # From VIDEO to LOCAL
# set firewall name video-local default-action 'drop'
# set firewall name video-local description 'From VIDEO to LOCAL'
# set firewall name video-local enable-default-log
# set firewall name video-local rule 1 action 'accept'
# set firewall name video-local rule 1 description 'Rule: accept_ntp'
# set firewall name video-local rule 1 destination port 'ntp'
# set firewall name video-local rule 1 protocol 'udp'
# set firewall name video-local rule 2 action 'accept'
# set firewall name video-local rule 2 description 'Rule: accept_dhcp'
# set firewall name video-local rule 2 destination port '67,68'
# set firewall name video-local rule 2 protocol 'udp'
# set firewall name video-local rule 2 source port '67,68'

# # From VIDEO to SERVERS
# set firewall name video-servers default-action 'drop'
# set firewall name video-servers description 'From VIDEO to SERVERS'
# set firewall name video-servers enable-default-log
# set firewall name video-servers rule 1 action 'accept'
# set firewall name video-servers rule 1 description 'Rule: accept_hass_ingress_from_allowed_devices'
# set firewall name video-servers rule 1 destination group address-group 'k8s_hass'
# set firewall name video-servers rule 1 destination port '8123'
# set firewall name video-servers rule 1 protocol 'tcp'
# set firewall name video-servers rule 1 source group address-group 'hass_clients'
# set firewall name video-servers rule 2 action 'accept'
# set firewall name video-servers rule 2 description 'Rule: accept_k8s_nodes'
# set firewall name video-servers rule 2 protocol 'udp'
# set firewall name video-servers rule 2 destination group address-group 'k8s_nodes'
# set firewall name video-servers rule 2 source port '6987-6989'

# # From VIDEO to CONTAINERS
# set firewall name video-containers default-action 'accept'
# set firewall name video-containers description 'From VIDEO to CONTAINERS'
# set firewall name video-containers rule 1 action 'accept'
# set firewall name video-containers rule 1 description 'Rule: accept_dns'
# set firewall name video-containers rule 1 destination port 'domain,domain-s'
# set firewall name video-containers rule 1 protocol 'tcp_udp'

# # From VIDEO to TRUSTED
# set firewall name video-trusted default-action 'drop'
# set firewall name video-trusted description 'From VIDEO to TRUSTED'
# set firewall name video-trusted enable-default-log

# # From VIDEO to WAN
# set firewall name video-wan default-action 'drop'
# set firewall name video-wan description 'From VIDEO to WAN'

# # From WAN to GUEST
# set firewall name wan-guest default-action 'drop'
# set firewall name wan-guest description 'From WAN to GUEST'
# set firewall name wan-guest enable-default-log

# # From WAN to IOT
# set firewall name wan-iot default-action 'drop'
# set firewall name wan-iot description 'From WAN to IOT'
# set firewall name wan-iot enable-default-log

# # From WAN to LAN
# set firewall name wan-lan default-action 'drop'
# set firewall name wan-lan description 'From WAN to LAN'
# set firewall name wan-lan enable-default-log

# # From WAN to LOCAL
# set firewall name wan-local default-action 'drop'
# set firewall name wan-local description 'From WAN to LOCAL'
# set firewall name wan-local enable-default-log
# set firewall name wan-local rule 1 action 'accept'
# set firewall name wan-local rule 1 description 'Rule: accept_wireguard'
# set firewall name wan-local rule 1 destination port '51820'
# set firewall name wan-local rule 1 protocol 'udp'

# # From WAN to SERVERS
# set firewall name wan-servers default-action 'drop'
# set firewall name wan-servers description 'From WAN to SERVERS'
# set firewall name wan-servers enable-default-log

# # From WAN to CONTAINERS
# set firewall name wan-containers default-action 'drop'
# set firewall name wan-containers description 'From WAN to CONTAINERS'
# set firewall name wan-containers enable-default-log

# # From WAN to TRUSTED
# set firewall name wan-trusted default-action 'drop'
# set firewall name wan-trusted description 'From WAN to TRUSTED'
# set firewall name wan-trusted enable-default-log

# # From WAN to VIDEO
# set firewall name wan-video default-action 'drop'
# set firewall name wan-video description 'From WAN to VIDEO'
# set firewall name wan-video enable-default-log
