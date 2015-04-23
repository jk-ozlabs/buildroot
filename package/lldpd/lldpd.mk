################################################################################
#
# lldpd
#
################################################################################

LLDPD_VERSION = 0.7.14
LLDPD_SITE = http://media.luffy.cx/files/lldpd/
LLDPD_SOURCE = lldpd-$(LLDPD_VERSION).tar.gz
LLDPD_LICENSE = ISC

$(eval $(autotools-package))
