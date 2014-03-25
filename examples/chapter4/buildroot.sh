#!/bin/bash - 
set -o nounset                              # Treat unset variables as an error

/usr/local/bin/qemu-system-i386 \
	-m 64M \
	-kernel images/bzImage \
	-hda images/rootfs.ext2 \
	-append "root=/dev/sda console=ttyS0" \
	-enable-kvm \
	-nographic \
	-net nic,vlan=0,model=e1000,macaddr=52:54:00:12:34:01 \
	-net nic,vlan=0,model=e1000,macaddr=52:54:00:12:34:12 \
	-net nic,vlan=0,model=e1000,macaddr=52:54:00:12:34:13 \
	-net nic,vlan=0,model=e1000,macaddr=52:54:00:12:34:14 \
	-net nic,vlan=0,model=e1000,macaddr=52:54:00:12:34:15

