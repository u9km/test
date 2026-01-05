# تحديد المعمارية وإصدار الـ SDK
TARGET = iphone:clang:16.5:14.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MyTweak
# تأكد أن اسم ملفك هو Tweak.x وأنه موجود بجانب الملفات الأخرى
MyTweak_FILES = Tweak.x fishhook.c
MyTweak_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
