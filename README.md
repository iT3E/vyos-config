# Deployment Steps

1. full clone from packer template
2. make sure nic is on vlan 910, or some other with network and DHCP  << potential problem??
3. ssh -i /home/LOCAL-WORKSTATION-USERNAME/.ssh/id_rsa SSH-USERNAME-CREATED-WITH-PACKER@IP-OF-SERVER
4. Run the following commands:

```
cd /config/
sudo git config --global --add safe.directory /config
sudo git pull
```

Step 5: Remove vlan tag from vnic