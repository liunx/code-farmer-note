#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

echo "begin l2tp switch..."
vde_switch --daemon --sock /tmp/l2tp.switch --mgmt /tmp/l2tp.mgmt
slirpvde -d -s /tmp/l2tp.switch -dhcp
echo "OK"

