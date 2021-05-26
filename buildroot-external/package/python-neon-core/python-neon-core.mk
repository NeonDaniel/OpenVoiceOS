################################################################################
#
# python-neon-core
#
################################################################################

PYTHON_NEON_CORE_VERSION = 340bcdb8e7c4c7876c6982bc0fc95c98154b5537
PYTHON_NEON_CORE_SITE = $(call github,NeonDaniel,NeonCore,$(PYTHON_NEON_CORE_VERSION))
PYTHON_NEON_CORE_SETUP_TYPE = setuptools
PYTHON_NEON_CORE_LICENSE_FILES = LICENSE

$(eval $(python-package))
