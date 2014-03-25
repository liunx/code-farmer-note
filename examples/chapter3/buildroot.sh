#!/bin/bash - 
set -o nounset                              # Treat unset variables as an error

/usr/local/bin/qemu-system-i386 \
	-m 64M \
	-kernel images/bzImage \
	-hda images/rootfs.ext2 \
	-append "root=/dev/sda console=ttyS0" \
	-enable-kvm \
	-nographic

