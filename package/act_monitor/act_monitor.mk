################################################################################
#
# act_monitor
#
################################################################################

ACT_MONITOR_VERSION = 1.0
ACT_MONITOR_SITE = $(ACT_MONITOR_PKGDIR)files
ACT_MONITOR_SITE_METHOD = local
ACT_MONITOR_LICENSE = GPL-3.0+
ACT_MONITOR_DEPENDENCIES = cairo libdrm libwebsockets4 jansson freetype

define ACT_MONITOR_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define ACT_MONITOR_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/act_monitor/
	$(INSTALL) -D -m 0755 $(@D)/act_monitor $(TARGET_DIR)/usr/bin/
	$(INSTALL) -D -m 0644 $(@D)/images/* $(TARGET_DIR)/usr/share/act_monitor/
endef

$(eval $(generic-package))