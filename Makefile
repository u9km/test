export THEOS=/var/mobile/theos

ARCHS = arm64
TARGET = iphone:clang:latest

# إعدادات البناء
DEBUG = 1
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libAngosPatcherNJB

# الملفات المصدرية
libAngosPatcherNJB_FILES = Tweak.x fishhook.c

# إعدادات الترجمة
libAngosPatcherNJB_CFLAGS = -fobjc-arc -DNO_JAILBREAK=1
libAngosPatcherNJB_CCFLAGS = -std=c++11 -stdlib=libc++

# إعدادات الربط (لا يوجد Substrate)
libAngosPatcherNJB_LDFLAGS = -Wl,-undefined,dynamic_lookup
libAngosPatcherNJB_FRAMEWORKS = Foundation UIKit

# بناء مكتبة عادية (ليس tweak)
include $(THEOS_MAKE_PATH)/library.mk

# قاعدة للبناء بدون Substrate
build-njb::
	$(MAKE) libAngosPatcherNJB_CFLAGS="-fobjc-arc -DNO_JAILBREAK=1"
	$(MAKE) THEOS_BUILD_DIR="$(THEOS_BUILD_DIR)/njb"