#!/bin/bash -
set -o nounset
# Treat unset variables as an error
/usr/local/bin/qemu-system-i386 \
    -m 64M \
    -kernel images/bzImage \
    -hda images/rootfs.ext2 \
    -append "root=/dev/sda console=ttyS0" \
    -enable-kvm \
    -daemonize \
    -vnc :51 \
    -net nic,vlan=0,model=e1000,macaddr=52:54:00:12:34:01 \
    -net tap,vlan=0,ifname=router1,script=router1-ifup,downscript=router1-ifdown \
    -net nic,vlan=1,model=e1000,macaddr=52:54:00:12:34:02 \
    -net tap,vlan=1,ifname=router2,script=router2-ifup,downscript=router2-ifdown \
    -net nic,vlan=2,model=e1000,macaddr=52:54:00:12:34:11 \
    -net vde,vlan=2,sock=/tmp/lan1.ctl[] \
    -net nic,vlan=3,model=e1000,macaddr=52:54:00:12:34:12 \
    -net vde,vlan=3,sock=/tmp/lan2.ctl[] \
    -net nic,vlan=4,model=e1000,macaddr=52:54:00:12:34:13 \
    -net vde,vlan=4,sock=/tmp/lan3.ctl[] \
    -net nic,vlan=5,model=e1000,macaddr=52:54:00:12:34:14 \
    -net vde,vlan=5,sock=/tmp/lan4.ctl[]
