INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

FINALPACKAGE = 1
ARCHS = arm64 arm64e

TWEAK_NAME = Mystic

Mystic_FILES = Tweak.x
Mystic_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
