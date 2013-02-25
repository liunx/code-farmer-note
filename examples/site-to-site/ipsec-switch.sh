#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

echo "begin switch..."
vde_switch --daemon --sock /tmp/ipsec.switch --mgmt /tmp/ipsec.mgmt
slirpvde -d -s /tmp/ipsec.switch -dhcp
echo "OK"

