##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 5c976f661230d8c393b07d943b74209b6bcf1e54
LDD_SITE	= git@github.com:cu-ecen-aeld/assignment-7-Mo2meN-Ali.git
LDD_SITE_METHOD    = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules/
LDD_MODULE_SUBDIRS += scull/


define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin/
endef

$(eval $(kernel-module))
$(eval $(generic-package))