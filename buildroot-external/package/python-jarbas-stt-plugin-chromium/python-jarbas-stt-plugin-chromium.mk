################################################################################
#
# python-jarbas-stt-plugin-chromium
#
################################################################################

PYTHON_JARBAS_STT_PLUGIN_CHROMIUM_VERSION = 0.1.3
PYTHON_JARBAS_STT_PLUGIN_CHROMIUM_SOURCE = jarbas-stt-plugin-chromium-$(PYTHON_JARBAS_STT_PLUGIN_CHROMIUM_VERSION).tar.gz
PYTHON_JARBAS_STT_PLUGIN_CHROMIUM_SITE = https://files.pythonhosted.org/packages/0c/6c/b7fc257c7cf886d0b9a286682b3631c65adaac64f2f9a7d8d4263ff4664f
PYTHON_JARBAS_STT_PLUGIN_CHROMIUM_SETUP_TYPE = setuptools

$(eval $(python-package))
