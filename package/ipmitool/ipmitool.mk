################################################################################
#
# ipmitool
#
################################################################################

IPMITOOL_VERSION = 1.8.15
IPMITOOL_SITE = http://sourceforge.net/projects/ipmitool/files/ipmitool/$(IPMITOOL_VERSION)/
IPMITOOL_LICENSE = BSD-4c
IPMITOOL_LICENSE_FILES = COPYING
IPMITOOL_AUTORECONF = YES
IPMITOOL_AUTORECONF_OPT = --install

define IPMITOOL_POST_PATCH_ADD_NEWS
	touch $(@D)/NEWS
endef

IPMITOOL_POST_PATCH_HOOKS += IPMITOOL_POST_PATCH_ADD_NEWS

$(eval $(autotools-package))
