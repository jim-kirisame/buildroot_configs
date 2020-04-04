#!/bin/sh

SHELL_FOLDER=$(dirname "$0")


cat > ${TARGET_DIR}/etc/network/interfaces << EOF

auto lo
iface lo inet loopback

auto usb0
    iface usb0 inet static
    address 192.168.214.50
    netmask 255.255.255.0
    gateway 192.168.214.51

EOF


OVERLAY_SIZE=0x80000

mkfs.jffs2 -s 0x100 -e 0x10000 --pad=$OVERLAY_SIZE -o ${BINARIES_DIR}/overlayfs.img -d $SHELL_FOLDER/overlayfs/
