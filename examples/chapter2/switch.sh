#!/bin/bash - 
# ternimal the vde switch, just type "kill -2 (vde pid)"

set -o nounset                              # Treat unset variables as an error

echo "begin vde switch..."
vde_switch --daemon --sock /tmp/vde.switch --mgmt /tmp/vde.mgmt
slirpvde -d -s /tmp/vde.switch -dhcp
echo "OK"

