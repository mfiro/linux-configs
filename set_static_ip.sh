# nmcli worked better on Ubuntu 22.04 the new netplan. 

# 1) Find the connection name:
nmcli connection show

# 2) set ip address, gateway, dns
# IP address and gateway are example
sudo nmcli connection modify <connection name> ipv4.addresses 192.178.1.10/24
sudo nmcli connection modify <connection name> ipv4.gateway 192.178.1.1
sudo nmcli connection modify <connection name> ipv4.dns 192.178.1.1
sudo nmcli connection modify <connection name> ipv4.method manual 
sudo nmcli connection down <connection name>
sudo nmcli connection up <connection name> 
