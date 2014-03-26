#!/bin/bash -
# ternimal the vde switch, just type "kill -2 (vde pid)"
set -o nounset
# Treat unset variables as an error
echo "begin switch..."
vde_switch --daemon --sock /tmp/switch --mgmt /tmp/switch.mgmt
slirpvde -d -s /tmp/switch -dhcp
echo "OK"
