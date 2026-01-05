# المعماريات المطلوبة لجميع أجهزة الآيفون الحديثة
ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MyTweak
# هنا يجب أن يتطابق الاسم تماماً مع اسم ملفك
MyTweak_FILES = Tweak.x fishhook.c
# إضافة Flags لضمان التوافقية ومنع الكراش
MyTweak_CFLAGS = -fobjc-arc -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/tweak.mk
