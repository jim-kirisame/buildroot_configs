################################################################################
#
# droidsansfallback
#
################################################################################

DROIDSANSFALLBACK_VERSION = 1.0
DROIDSANSFALLBACK_SITE = $(DROIDSANSFALLBACK_PKGDIR)files
DROIDSANSFALLBACK_SITE_METHOD = local
DROIDSANSFALLBACK_LICENSE = Apache-2.0
DROIDSANSFALLBACK_DEPENDENCIES = host-genimage

define DROIDSANSFALLBACK_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/fonts/TTF
	cp $(@D)/* $(TARGET_DIR)/usr/share/fonts/TTF
endef

$(eval $(generic-package))