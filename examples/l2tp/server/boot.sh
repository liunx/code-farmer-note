#!/bin/bash - 
set -o nounset                              # Treat unset variables as an error

/usr/local/bin/qemu-system-i386 \
	-m 64M \
	-kernel openwrt-x86-generic-vmlinuz \
	-hda openwrt-x86-generic-rootfs-ext4.img \
	-append "root=/dev/sda console=ttyS0" \
	-enable-kvm \
	-nographic \
	-vnc :81 \
	-net nic,vlan=0,model=e1000,macaddr=52:54:00:12:34:31 \
	-net vde,vlan=0,sock=/tmp/l2tp.switch

