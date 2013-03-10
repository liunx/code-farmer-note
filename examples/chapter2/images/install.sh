#!/bin/bash

if ! [ -f openwrt-x86-generic-vmlinuz ] ; then
	wget http://downloads.openwrt.org/attitude_adjustment/12.09-rc1/x86/generic/openwrt-x86-generic-vmlinuz
fi

if ! [ -f openwrt-x86-generic-rootfs-ext4.img ] ; then
	wget http://downloads.openwrt.org/attitude_adjustment/12.09-rc1/x86/generic/openwrt-x86-generic-rootfs-ext4.img.gz
	gunzip openwrt-x86-generic-rootfs-ext4.img.gz
fi

if ! [ -f bzImage-chapter2.gz ] ; then
	wget http://code-farmer-note.googlecode.com/files/bzImage-chapter2.gz
	gunzip bzImage-chapter2.gz
fi

if ! [ -f rootfs.ext2-chapter2.gz ] ; then
	wget http://code-farmer-note.googlecode.com/files/rootfs.ext2-chapter2.gz
	gunzip rootfs.ext2-chapter2.gz
fi
