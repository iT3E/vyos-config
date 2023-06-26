#!/bin/vbash

set firewall zone unifi-mgmt-900 default-action 'drop'
set firewall zone unifi-mgmt-900 from unifi-frontend-910 firewall name 'unifi-frontend-910-unifi-mgmt-900'
set firewall zone unifi-mgmt-900 from k8s-120 firewall name 'k8s-120-unifi-mgmt-900'
set firewall zone unifi-mgmt-900 from iLO-550 firewall name 'iLO-550-unifi-mgmt-900'
set firewall zone unifi-mgmt-900 from pve-11 firewall name 'pve-11-unifi-mgmt-900'
set firewall zone unifi-mgmt-900 from seccam-610 firewall name 'seccam-610-unifi-mgmt-900'
set firewall zone unifi-mgmt-900 from UISP-140 firewall name 'UISP-140-unifi-mgmt-900'
set firewall zone unifi-mgmt-900 from transit-10 firewall name 'transit-10-unifi-mgmt-900'
set firewall zone unifi-mgmt-900 from ad-110 firewall name 'ad-110-unifi-mgmt-900'
set firewall zone unifi-mgmt-900 from bastion-410 firewall name 'bastion-410-unifi-mgmt-900'
set firewall zone unifi-mgmt-900 from app-720 firewall name 'app-720-unifi-mgmt-900'
set firewall zone unifi-mgmt-900 interface 'eth0.900'

set firewall zone unifi-frontend-910 default-action 'drop'
set firewall zone unifi-frontend-910 from unifi-mgmt-900 firewall name 'unifi-mgmt-900-unifi-frontend-910'
set firewall zone unifi-frontend-910 from k8s-120 firewall name 'k8s-120-unifi-frontend-910'
set firewall zone unifi-frontend-910 from iLO-550 firewall name 'iLO-550-unifi-frontend-910'
set firewall zone unifi-frontend-910 from pve-11 firewall name 'pve-11-unifi-frontend-910'
set firewall zone unifi-frontend-910 from seccam-610 firewall name 'seccam-610-unifi-frontend-910'
set firewall zone unifi-frontend-910 from UISP-140 firewall name 'UISP-140-unifi-frontend-910'
set firewall zone unifi-frontend-910 from transit-10 firewall name 'transit-10-unifi-frontend-910'
set firewall zone unifi-frontend-910 from ad-110 firewall name 'ad-110-unifi-frontend-910'
set firewall zone unifi-frontend-910 from bastion-410 firewall name 'bastion-410-unifi-frontend-910'
set firewall zone unifi-frontend-910 from app-720 firewall name 'app-720-unifi-frontend-910'
set firewall zone unifi-frontend-910 interface 'eth0.910'

set firewall zone k8s-120 default-action 'drop'
set firewall zone k8s-120 from unifi-mgmt-900 firewall name 'unifi-mgmt-900-k8s-120'
set firewall zone k8s-120 from unifi-frontend-910 firewall name 'unifi-frontend-910-k8s-120'
set firewall zone k8s-120 from iLO-550 firewall name 'iLO-550-k8s-120'
set firewall zone k8s-120 from pve-11 firewall name 'pve-11-k8s-120'
set firewall zone k8s-120 from seccam-610 firewall name 'seccam-610-k8s-120'
set firewall zone k8s-120 from UISP-140 firewall name 'UISP-140-k8s-120'
set firewall zone k8s-120 from transit-10 firewall name 'transit-10-k8s-120'
set firewall zone k8s-120 from ad-110 firewall name 'ad-110-k8s-120'
set firewall zone k8s-120 from bastion-410 firewall name 'bastion-410-k8s-120'
set firewall zone k8s-120 from app-720 firewall name 'app-720-k8s-120'
set firewall zone k8s-120 interface 'eth0.120'

set firewall zone iLO-550 default-action 'drop'
set firewall zone iLO-550 from unifi-mgmt-900 firewall name 'unifi-mgmt-900-iLO-550'
set firewall zone iLO-550 from unifi-frontend-910 firewall name 'unifi-frontend-910-iLO-550'
set firewall zone iLO-550 from k8s-120 firewall name 'k8s-120-iLO-550'
set firewall zone iLO-550 from pve-11 firewall name 'pve-11-iLO-550'
set firewall zone iLO-550 from seccam-610 firewall name 'seccam-610-iLO-550'
set firewall zone iLO-550 from UISP-140 firewall name 'UISP-140-iLO-550'
set firewall zone iLO-550 from transit-10 firewall name 'transit-10-iLO-550'
set firewall zone iLO-550 from ad-110 firewall name 'ad-110-iLO-550'
set firewall zone iLO-550 from bastion-410 firewall name 'bastion-410-iLO-550'
set firewall zone iLO-550 from app-720 firewall name 'app-720-iLO-550'
set firewall zone iLO-550 interface 'eth0.550'

set firewall zone pve-11 default-action 'drop'
set firewall zone pve-11 from unifi-mgmt-900 firewall name 'unifi-mgmt-900-pve-11'
set firewall zone pve-11 from unifi-frontend-910 firewall name 'unifi-frontend-910-pve-11'
set firewall zone pve-11 from k8s-120 firewall name 'k8s-120-pve-11'
set firewall zone pve-11 from iLO-550 firewall name 'iLO-550-pve-11'
set firewall zone pve-11 from seccam-610 firewall name 'seccam-610-pve-11'
set firewall zone pve-11 from UISP-140 firewall name 'UISP-140-pve-11'
set firewall zone pve-11 from transit-10 firewall name 'transit-10-pve-11'
set firewall zone pve-11 from ad-110 firewall name 'ad-110-pve-11'
set firewall zone pve-11 from bastion-410 firewall name 'bastion-410-pve-11'
set firewall zone pve-11 from app-720 firewall name 'app-720-pve-11'
set firewall zone pve-11 interface 'eth0.11'

set firewall zone seccam-610 default-action 'drop'
set firewall zone seccam-610 from unifi-mgmt-900 firewall name 'unifi-mgmt-900-seccam-610'
set firewall zone seccam-610 from unifi-frontend-910 firewall name 'unifi-frontend-910-seccam-610'
set firewall zone seccam-610 from k8s-120 firewall name 'k8s-120-seccam-610'
set firewall zone seccam-610 from iLO-550 firewall name 'iLO-550-seccam-610'
set firewall zone seccam-610 from pve-11 firewall name 'pve-11-seccam-610'
set firewall zone seccam-610 from UISP-140 firewall name 'UISP-140-seccam-610'
set firewall zone seccam-610 from transit-10 firewall name 'transit-10-seccam-610'
set firewall zone seccam-610 from ad-110 firewall name 'ad-110-seccam-610'
set firewall zone seccam-610 from bastion-410 firewall name 'bastion-410-seccam-610'
set firewall zone seccam-610 from app-720 firewall name 'app-720-seccam-610'
set firewall zone seccam-610 interface 'eth0.610'

set firewall zone UISP-140 default-action 'drop'
set firewall zone UISP-140 from unifi-mgmt-900 firewall name 'unifi-mgmt-900-UISP-140'
set firewall zone UISP-140 from unifi-frontend-910 firewall name 'unifi-frontend-910-UISP-140'
set firewall zone UISP-140 from k8s-120 firewall name 'k8s-120-UISP-140'
set firewall zone UISP-140 from iLO-550 firewall name 'iLO-550-UISP-140'
set firewall zone UISP-140 from pve-11 firewall name 'pve-11-UISP-140'
set firewall zone UISP-140 from seccam-610 firewall name 'seccam-610-UISP-140'
set firewall zone UISP-140 from transit-10 firewall name 'transit-10-UISP-140'
set firewall zone UISP-140 from ad-110 firewall name 'ad-110-UISP-140'
set firewall zone UISP-140 from bastion-410 firewall name 'bastion-410-UISP-140'
set firewall zone UISP-140 from app-720 firewall name 'app-720-UISP-140'
set firewall zone UISP-140 interface 'eth0.140'

set firewall zone transit-10 default-action 'drop'
set firewall zone transit-10 from unifi-mgmt-900 firewall name 'unifi-mgmt-900-transit-10'
set firewall zone transit-10 from unifi-frontend-910 firewall name 'unifi-frontend-910-transit-10'
set firewall zone transit-10 from k8s-120 firewall name 'k8s-120-transit-10'
set firewall zone transit-10 from iLO-550 firewall name 'iLO-550-transit-10'
set firewall zone transit-10 from pve-11 firewall name 'pve-11-transit-10'
set firewall zone transit-10 from seccam-610 firewall name 'seccam-610-transit-10'
set firewall zone transit-10 from UISP-140 firewall name 'UISP-140-transit-10'
set firewall zone transit-10 from ad-110 firewall name 'ad-110-transit-10'
set firewall zone transit-10 from bastion-410 firewall name 'bastion-410-transit-10'
set firewall zone transit-10 from app-720 firewall name 'app-720-transit-10'
set firewall zone transit-10 interface 'eth0.10'

set firewall zone ad-110 default-action 'drop'
set firewall zone ad-110 from unifi-mgmt-900 firewall name 'unifi-mgmt-900-ad-110'
set firewall zone ad-110 from unifi-frontend-910 firewall name 'unifi-frontend-910-ad-110'
set firewall zone ad-110 from k8s-120 firewall name 'k8s-120-ad-110'
set firewall zone ad-110 from iLO-550 firewall name 'iLO-550-ad-110'
set firewall zone ad-110 from pve-11 firewall name 'pve-11-ad-110'
set firewall zone ad-110 from seccam-610 firewall name 'seccam-610-ad-110'
set firewall zone ad-110 from UISP-140 firewall name 'UISP-140-ad-110'
set firewall zone ad-110 from transit-10 firewall name 'transit-10-ad-110'
set firewall zone ad-110 from bastion-410 firewall name 'bastion-410-ad-110'
set firewall zone ad-110 from app-720 firewall name 'app-720-ad-110'
set firewall zone ad-110 interface 'eth0.110'

set firewall zone bastion-410 default-action 'drop'
set firewall zone bastion-410 from unifi-mgmt-900 firewall name 'unifi-mgmt-900-bastion-410'
set firewall zone bastion-410 from unifi-frontend-910 firewall name 'unifi-frontend-910-bastion-410'
set firewall zone bastion-410 from k8s-120 firewall name 'k8s-120-bastion-410'
set firewall zone bastion-410 from iLO-550 firewall name 'iLO-550-bastion-410'
set firewall zone bastion-410 from pve-11 firewall name 'pve-11-bastion-410'
set firewall zone bastion-410 from seccam-610 firewall name 'seccam-610-bastion-410'
set firewall zone bastion-410 from UISP-140 firewall name 'UISP-140-bastion-410'
set firewall zone bastion-410 from transit-10 firewall name 'transit-10-bastion-410'
set firewall zone bastion-410 from ad-110 firewall name 'ad-110-bastion-410'
set firewall zone bastion-410 from app-720 firewall name 'app-720-bastion-410'
set firewall zone bastion-410 interface 'eth0.410'

set firewall zone app-720 default-action 'drop'
set firewall zone app-720 from unifi-mgmt-900 firewall name 'unifi-mgmt-900-app-720'
set firewall zone app-720 from unifi-frontend-910 firewall name 'unifi-frontend-910-app-720'
set firewall zone app-720 from k8s-120 firewall name 'k8s-120-app-720'
set firewall zone app-720 from iLO-550 firewall name 'iLO-550-app-720'
set firewall zone app-720 from pve-11 firewall name 'pve-11-app-720'
set firewall zone app-720 from seccam-610 firewall name 'seccam-610-app-720'
set firewall zone app-720 from UISP-140 firewall name 'UISP-140-app-720'
set firewall zone app-720 from transit-10 firewall name 'transit-10-app-720'
set firewall zone app-720 from ad-110 firewall name 'ad-110-app-720'
set firewall zone app-720 from bastion-410 firewall name 'bastion-410-app-720'
set firewall zone app-720 interface 'eth0.720'

set firewall zone vpn default-action 'drop'
set firewall zone vpn from unifi-mgmt-900 firewall name 'unifi-mgmt-900-vpn'
set firewall zone vpn from unifi-frontend-910 firewall name 'unifi-frontend-910-vpn'
set firewall zone vpn from k8s-120 firewall name 'k8s-120-vpn'
set firewall zone vpn from iLO-550 firewall name 'iLO-550-vpn'
set firewall zone vpn from pve-11 firewall name 'pve-11-vpn'
set firewall zone vpn from seccam-610 firewall name 'seccam-610-vpn'
set firewall zone vpn from UISP-140 firewall name 'UISP-140-vpn'
set firewall zone vpn from transit-10 firewall name 'transit-10-vpn'
set firewall zone vpn from ad-110 firewall name 'ad-110-vpn'
set firewall zone vpn from bastion-410 firewall name 'bastion-410-vpn'
set firewall zone vpn from app-720 firewall name 'app-720-vpn'
set firewall zone vpn interface 'wg01'

# set firewall zone containers default-action 'drop'
# set firewall zone containers description 'VyOS containers zone'
# set firewall zone containers from guest firewall name 'guest-containers'
# set firewall zone containers from iot firewall name 'iot-containers'
# set firewall zone containers from lan firewall name 'lan-containers'
# set firewall zone containers from local firewall name 'local-containers'
# set firewall zone containers from servers firewall name 'servers-containers'
# set firewall zone containers from trusted firewall name 'trusted-containers'
# set firewall zone containers from video firewall name 'video-containers'
# set firewall zone containers from wan firewall name 'wan-containers'
# set firewall zone containers interface 'pod-containers'

###########
# set firewall zone guest default-action 'drop'
# set firewall zone guest from iot firewall name 'iot-guest'
# set firewall zone guest from lan firewall name 'lan-guest'
# set firewall zone guest from local firewall name 'local-guest'
# set firewall zone guest from servers firewall name 'servers-guest'
# set firewall zone guest from containers firewall name 'containers-guest'
# set firewall zone guest from trusted firewall name 'trusted-guest'
# set firewall zone guest from video firewall name 'video-guest'
# set firewall zone guest from wan firewall name 'wan-guest'
# set firewall zone guest interface 'eth0.30'

# set firewall zone iot default-action 'drop'
# set firewall zone iot from guest firewall name 'guest-iot'
# set firewall zone iot from lan firewall name 'lan-iot'
# set firewall zone iot from local firewall name 'local-iot'
# set firewall zone iot from servers firewall name 'servers-iot'
# set firewall zone iot from containers firewall name 'containers-iot'
# set firewall zone iot from trusted firewall name 'trusted-iot'
# set firewall zone iot from video firewall name 'video-iot'
# set firewall zone iot from wan firewall name 'wan-iot'
# set firewall zone iot interface 'eth0.40'

# set firewall zone lan default-action 'drop'
# set firewall zone lan from guest firewall name 'guest-lan'
# set firewall zone lan from iot firewall name 'iot-lan'
# set firewall zone lan from local firewall name 'local-lan'
# set firewall zone lan from servers firewall name 'servers-lan'
# set firewall zone lan from containers firewall name 'containers-lan'
# set firewall zone lan from trusted firewall name 'trusted-lan'
# set firewall zone lan from video firewall name 'video-lan'
# set firewall zone lan from wan firewall name 'wan-lan'
# set firewall zone lan interface 'eth0'

# set firewall zone local default-action 'drop'
# set firewall zone local description 'Local router zone'
# set firewall zone local from guest firewall name 'guest-local'
# set firewall zone local from iot firewall name 'iot-local'
# set firewall zone local from lan firewall name 'lan-local'
# set firewall zone local from servers firewall name 'servers-local'
# set firewall zone local from containers firewall name 'containers-local'
# set firewall zone local from trusted firewall name 'trusted-local'
# set firewall zone local from video firewall name 'video-local'
# set firewall zone local from wan firewall name 'wan-local'
# set firewall zone local local-zone

# set firewall zone servers default-action 'drop'
# set firewall zone servers from guest firewall name 'guest-servers'
# set firewall zone servers from iot firewall name 'iot-servers'
# set firewall zone servers from lan firewall name 'lan-servers'
# set firewall zone servers from local firewall name 'local-servers'
# set firewall zone servers from containers firewall name 'containers-servers'
# set firewall zone servers from trusted firewall name 'trusted-servers'
# set firewall zone servers from video firewall name 'video-servers'
# set firewall zone servers from wan firewall name 'wan-servers'
# set firewall zone servers interface 'eth0.10'

# set firewall zone containers default-action 'drop'
# set firewall zone containers description 'VyOS containers zone'
# set firewall zone containers from guest firewall name 'guest-containers'
# set firewall zone containers from iot firewall name 'iot-containers'
# set firewall zone containers from lan firewall name 'lan-containers'
# set firewall zone containers from local firewall name 'local-containers'
# set firewall zone containers from servers firewall name 'servers-containers'
# set firewall zone containers from trusted firewall name 'trusted-containers'
# set firewall zone containers from video firewall name 'video-containers'
# set firewall zone containers from wan firewall name 'wan-containers'
# set firewall zone containers interface 'pod-containers'

# set firewall zone trusted default-action 'drop'
# set firewall zone trusted from guest firewall name 'guest-trusted'
# set firewall zone trusted from iot firewall name 'iot-trusted'
# set firewall zone trusted from lan firewall name 'lan-trusted'
# set firewall zone trusted from local firewall name 'local-trusted'
# set firewall zone trusted from servers firewall name 'servers-trusted'
# set firewall zone trusted from containers firewall name 'containers-trusted'
# set firewall zone trusted from video firewall name 'video-trusted'
# set firewall zone trusted from wan firewall name 'wan-trusted'
# set firewall zone trusted interface 'eth0.20'
# set firewall zone trusted interface 'wg01'

# set firewall zone video default-action 'drop'
# set firewall zone video from guest firewall name 'guest-video'
# set firewall zone video from iot firewall name 'iot-video'
# set firewall zone video from lan firewall name 'lan-video'
# set firewall zone video from local firewall name 'local-video'
# set firewall zone video from servers firewall name 'servers-video'
# set firewall zone video from containers firewall name 'containers-video'
# set firewall zone video from trusted firewall name 'trusted-video'
# set firewall zone video from wan firewall name 'wan-video'
# set firewall zone video interface 'eth0.50'
# set firewall zone wan default-action 'drop'

# set firewall zone wan from guest firewall name 'guest-wan'
# set firewall zone wan from iot firewall name 'iot-wan'
# set firewall zone wan from lan firewall name 'lan-wan'
# set firewall zone wan from local firewall name 'local-wan'
# set firewall zone wan from servers firewall name 'servers-wan'
# set firewall zone wan from containers firewall name 'containers-wan'
# set firewall zone wan from trusted firewall name 'trusted-wan'
# set firewall zone wan from video firewall name 'video-wan'
# set firewall zone wan interface 'eth5'
# set firewall zone wan interface 'pppoe0'
