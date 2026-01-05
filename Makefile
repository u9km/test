TARGET := iphone:clang:latest:13.0
ARCHS := arm64

INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_PACKAGE_SCHEME = rootless

# مهم جدًا: تعريف THEOS + common.mk عشان THEOS_MAKE_PATH ما يكون فاضي
THEOS ?= $(HOME)/theos
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = test
test_FILES = Tweak.x fishhook.c
test_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
