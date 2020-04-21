#!/bin/sh

SHELL_FOLDER=$(dirname "$0")

OVERLAY_SIZE=0x80000

mkfs.jffs2 -s 0x100 -e 0x10000 --pad=$OVERLAY_SIZE -o ${BINARIES_DIR}/overlayfs.img -d $SHELL_FOLDER/overlayfs/
cp $SHELL_FOLDER/logo.bmp ${BINARIES_DIR}/logo.bmp
