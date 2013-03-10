#!/bin/bash - 
set -o nounset                              # Treat unset variables as an error

/usr/local/bin/qemu-system-i386 \
	-m 64M \
	-kernel images/openwrt-x86-generic-vmlinuz \
	-hda images/openwrt-x86-generic-rootfs-ext4.img \
	-append "root=/dev/sda console=ttyS0" \
	-enable-kvm \
	-nographic \
	-usb \
	-net nic,vlan=0,model=e1000,macaddr="12:34:56:78:9a:00" \
	-net vde,vlan=0,sock=/tmp/vde.switch

