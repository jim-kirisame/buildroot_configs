#!/bin/sh

cat > ${TARGET_DIR}/etc/network/interfaces << EOF

auto lo
iface lo inet loopback

auto usb0
    iface usb0 inet static
    address 192.168.214.50
    netmask 255.255.255.0
    gateway 192.168.214.51

EOF
