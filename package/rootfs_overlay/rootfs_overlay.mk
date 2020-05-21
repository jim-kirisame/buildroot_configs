################################################################################
#
# rootfs_overlay
#
################################################################################

ROOTFS_OVERLAY_VERSION = 1.0
ROOTFS_OVERLAY_SITE = $(ROOTFS_OVERLAY_PKGDIR)files
ROOTFS_OVERLAY_SITE_METHOD = local
ROOTFS_OVERLAY_LICENSE = Apache-2.0

define ROOTFS_OVERLAY_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/mnt_overlay $(TARGET_DIR)/usr/sbin/
	mkdir -p $(TARGET_DIR)/overlay
endef

$(eval $(generic-package))