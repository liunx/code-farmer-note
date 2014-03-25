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
	-net nic,vlan=1,model=e1000,macaddr=52:54:00:12:34:12 \
	-net vde,vlan=1,sock=/tmp/lan1.ctl[] \
	-net nic,vlan=2,model=e1000,macaddr=52:54:00:12:34:13 \
	-net vde,vlan=2,sock=/tmp/lan2.ctl[] \
	-net nic,vlan=3,model=e1000,macaddr=52:54:00:12:34:14 \
	-net vde,vlan=3,sock=/tmp/lan3.ctl[] \
	-net nic,vlan=4,model=e1000,macaddr=52:54:00:12:34:15 \
	-net vde,vlan=4,sock=/tmp/lan4.ctl[] \

