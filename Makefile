# معمارية ARM64 للأجهزة الحديثة
ARCHS = arm64 arm64e
# ربط الـ SDK المحمل في الخطوة السابقة
TARGET = iphone:clang:16.5:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ProAntiCrash
# إضافة جميع الملفات المطلوبة للبناء
ProAntiCrash_FILES = Tweak.x fishhook.c
ProAntiCrash_CFLAGS = -fobjc-arc -O3 # O3 للسرعة القصوى وتقليل حجم الملف

include $(THEOS_MAKE_PATH)/tweak.mk
