TARGET := iphone:clang:latest:13.0
ARCHS := arm64

INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_PACKAGE_SCHEME = rootless

TWEAK_NAME = test
test_FILES = Tweak.x fishhook.c
test_CFLAGS = -fobjc-arc
test_RESOURCE_DIRS = Resources

include $(THEOS_MAKE_PATH)/tweak.mk
