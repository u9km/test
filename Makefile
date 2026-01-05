# تحديد الهدف والمعمارية
TARGET = iphone:clang:16.5:14.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AntiCrashPro
# تأكد أن الاسم هنا يطابق اسم ملفك المرفوع بالضبط (Tweak_obfuscated.x)
AntiCrashPro_FILES = Tweak_obfuscated.x fishhook.c
AntiCrashPro_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
