################################################################################
#
# mycroft-service
#
################################################################################

MYCROFT_SERVICE_VERSION = 0.1.0
MYCROFT_SERVICE_SITE = $(BR2_EXTERNAL_OPENVOICEOS_PATH)/package/neon-service
MYCROFT_SERVICE_SITE_METHOD = local
MYCROFT_SERVICE_LICENSE = Apache License 2.0
MYCROFT_SERVICE_LICENSE_FILES = LICENSE

define MYCROFT_SERVICE_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/home/mycroft/.local/share/systemd
	$(INSTALL) -m 0755 $(@D)/neon-systemd_audio.py \
		$(TARGET_DIR)/home/mycroft/.local/share/systemd/neon-systemd_audio.py
	$(INSTALL) -m 0755 $(@D)/neon-systemd_enclosure.py \
                $(TARGET_DIR)/home/mycroft/.local/share/systemd/neon-systemd_enclosure.py
	$(INSTALL) -m 0755 $(@D)/neon-systemd_messagebus.py \
                $(TARGET_DIR)/home/mycroft/.local/share/systemd/neon-systemd_messagebus.py
	$(INSTALL) -m 0755 $(@D)/neon-systemd_skills.py \
                $(TARGET_DIR)/home/mycroft/.local/share/systemd/neon-systemd_skills.py
	$(INSTALL) -m 0755 $(@D)/neon-systemd_voice.py \
                $(TARGET_DIR)/home/mycroft/.local/share/systemd/neon-systemd_voice.py

	$(INSTALL) -D -m 644 $(@D)/neon.service \
		$(TARGET_DIR)/usr/lib/systemd/system/neon.service
	$(INSTALL) -D -m 644 $(@D)/neon-messagebus.service \
                $(TARGET_DIR)/usr/lib/systemd/system/neon-messagebus.service
	$(INSTALL) -D -m 644 $(@D)/neon-audio.service \
                $(TARGET_DIR)/usr/lib/systemd/system/neon-audio.service
	$(INSTALL) -D -m 644 $(@D)/neon-voice.service \
                $(TARGET_DIR)/usr/lib/systemd/system/neon-voice.service
	$(INSTALL) -D -m 644 $(@D)/neon-enclosure.service \
                $(TARGET_DIR)/usr/lib/systemd/system/neon-enclosure.service
	$(INSTALL) -D -m 644 $(@D)/neon-skills.service \
                $(TARGET_DIR)/usr/lib/systemd/system/neon-skills.service
	$(INSTALL) -D -m 644 $(@D)/neon-gui.service \
                $(TARGET_DIR)/usr/lib/systemd/system/neon-gui.service
endef

$(eval $(generic-package))
