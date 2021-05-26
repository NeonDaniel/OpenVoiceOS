################################################################################
#
# kf5-kwayland
#
################################################################################

KF5_KWAYLAND_VERSION = $(KF5_VERSION)
KF5_KWAYLAND_SITE = $(KF5_SITE)
KF5_KWAYLAND_SOURCE = kwayland-$(KF5_KWAYLAND_VERSION).tar.xz
KF5_KKWAYLAND_LICENSE = BSD-3-Clause
KF5_KKWAYLAND_LICENSE_FILES = COPYING-CMAKE-SCRIPTS

KF5_KWAYLAND_DEPENDENCIES = host-pkgconf qt5wayland wayland-protocols kf5-plasma-wayland-protocols
KF5_KWAYLAND_INSTALL_STAGING = YES
KF5_KWAYLAND_SUPPORTS_IN_SOURCE_BUILD = NO

KF5_KWAYLAND_CXXFLAGS = $(TARGET_CXXFLAGS)

ifeq ($(BR2_TOOLCHAIN_HAS_LIBATOMIC),y)
KF5_KWAYLAND_CXXFLAGS += -latomic
endif

KF5_KWAYLAND_CONF_OPTS = -DCMAKE_CXX_FLAGS="$(KF5_KWAYLAND_CXXFLAGS)"
KF5_KWAYLAND_CONF_OPTS += -DHAVE_EGL=1
KF5_KWAYLAND_CONF_OPTS += -DEGL_INCLUDE_DIR="$(STAGING_DIR)/usr/include"
KF5_KWAYLAND_CONF_OPTS += -DEGL_LIBRARY="$(STAGING_DIR)/usr/lib/libEGL.so"

$(eval $(cmake-package))
