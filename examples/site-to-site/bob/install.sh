#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

echo "Begin install..."
mkdir -p rootfs
mount openwrt-x86-generic-rootfs-ext4.img rootfs -o loop
install -m 600 ipsec-tools.conf rootfs/etc/
install -m 600 racoon.conf rootfs/etc/
install -m 600 psk.txt rootfs/etc/racoon/
install -m 755 racoon rootfs/etc/init.d
umount rootfs
rmdir rootfs
echo "Complete!"
