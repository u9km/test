TARGET := iphone:clang:latest:13.0
ARCHS := arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

THEOS_PACKAGE_SCHEME = rootless

TWEAK_NAME = MyTweak
MyTweak_FILES = Tweak.x
MyTweak_CFLAGS = -fobjc-arc

# لو عندك صور/Resources حطها داخل مجلد Resources
MyTweak_RESOURCE_DIRS = Resources

include $(THEOS_MAKE_PATH)/tweak.mk
