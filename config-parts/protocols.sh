#!/bin/vbash

# BGP configuration
# set protocols bgp neighbor 10.1.1.31 address-family ipv4-unicast
# set protocols bgp neighbor 10.1.1.31 description 'delta'
# set protocols bgp neighbor 10.1.1.31 remote-as '64512'
# set protocols bgp neighbor 10.1.1.32 address-family ipv4-unicast
# set protocols bgp neighbor 10.1.1.32 description 'enigma'
# set protocols bgp neighbor 10.1.1.32 remote-as '64512'
# set protocols bgp neighbor 10.1.1.33 address-family ipv4-unicast
# set protocols bgp neighbor 10.1.1.33 description 'felix'
# set protocols bgp neighbor 10.1.1.33 remote-as '64512'
# set protocols bgp parameters router-id '10.1.0.1'
# set protocols bgp system-as '64512'

# Static Routes
set protocols static route 0.0.0.0/0 next-hop 172.16.1.1
#temp for testing
set protocols static route 10.10.93.0/24 next-hop 172.16.1.254
