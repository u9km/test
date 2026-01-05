# إعدادات المعمارية والـ SDK (المسار المضمون)
ARCHS = arm64 arm64e
TARGET = iphone:clang:16.5:14.0

# إلغاء ميزات الجيلبريك الإجبارية لمنع الكراش
export THEOS_DEVICE_IP = 
export THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AntiCrashPro

# تأكد أن الملفات الثلاثة موجودة في GitHub بنفس هذه الأسماء
AntiCrashPro_FILES = Tweak.x fishhook.c
AntiCrashPro_CFLAGS = -fobjc-arc -Wno-deprecated-declarations
AntiCrashPro_FRAMEWORKS = Foundation UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

# إضافة هذا السطر لمنع أخطاء التوقيع في GitHub
after-install::
	install.exec "killall -9 SpringBoard"
