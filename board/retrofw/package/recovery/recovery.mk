################################################################################
#
# recovery
#
################################################################################
RECOVERY_VERSION = 58dcc75
RECOVERY_SITE = https://github.com/retrofw/recovery.git
RECOVERY_SITE_METHOD = git

RECOVERY_DEPENDENCIES = sdl sdl_image sdl_ttf

define RECOVERY_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)
endef

define RECOVERY_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 \
		$(@D)/retrofw \
		$(TARGET_DIR)/usr/bin/retrofw
endef

$(eval $(generic-package))
