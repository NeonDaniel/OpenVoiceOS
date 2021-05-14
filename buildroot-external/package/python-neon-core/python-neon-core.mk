################################################################################
#
# python-neon-core
#
################################################################################

PYTHON_NEON_CORE_VERSION = 6528035942a37d911e10dc7c9638f09e7b75b6ad
PYTHON_NEON_CORE_SITE = $(call github,NeonDaniel,NeonCore,$(PYTHON_NEON_CORE_VERSION))
PYTHON_NEON_CORE_SETUP_TYPE = setuptools
PYTHON_NEON_CORE_LICENSE_FILES = LICENSE

$(eval $(python-package))
