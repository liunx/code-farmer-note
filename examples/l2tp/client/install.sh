#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

URL=http://downloads.openwrt.org/attitude_adjustment/12.09-rc1/x86/generic/
VMLINUZ=openwrt-x86-generic-vmlinuz
ROOTFS=openwrt-x86-generic-rootfs-ext4.img
TMPDIR=rootfs
echo "Begin install..."
if ! [ -f $ROOTFS ] ; then
	echo "get images..."
	wget $URL$VMLINUZ 
	wget $URL$ROOTFS.gz
	gunzip $ROOTFS.gz
fi

mkdir -p $TMPDIR
mount $ROOTFS $TMPDIR -o loop
umount $TMPDIR
rmdir $TMPDIR
echo "Complete!"
