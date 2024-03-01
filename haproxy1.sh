#!/bin/bash
echo "mostrando version haproxy"
sudo apt update && sudo apt install haproxy -y
echo "copiando archivo .cfg"
sudo cp "/vagrant/haproxy.cfg" "/etc/haproxy/haproxy.cfg"
sudo systemctl restart haproxy 
sudo apt install consul -y
echo "copando consul file"
sudo cp "/vagrant/consulHA.hcl" "/etc/consul.d/consul.hcl"




