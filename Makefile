# 1. تحديد المعماريات لدعم جميع أجهزة الآيفون (من X إلى 16 Pro)
ARCHS = arm64 arm64e

# 2. تحديد الـ SDK وإصدار النظام الأدنى (مهم جداً لتجنب خطأ Missing SDK)
TARGET = iphone:clang:16.5:14.0

# 3. تضمين إعدادات Theos الأساسية
include $(THEOS)/makefiles/common.mk

# 4. اسم الدايلب (يجب أن يكون بدون مسافات)
TWEAK_NAME = AntiCrashPro

# 5. الملفات المطلوبة للبناء (تأكد أن الأسماء تطابق ملفاتك في GitHub)
# أضفنا fishhook.c هنا لأن الكود يعتمد عليه للعمل بدون جيلبريك
AntiCrashPro_FILES = Tweak.x fishhook.c

# 6. إعدادات المترجم (Compiler Flags) لضمان الاستقرار والسرعة
# -fobjc-arc: للإدارة التلقائية للذاكرة ومنع الكراش
# -O3: لتحسين أداء الكود (Pro Optimization)
AntiCrashPro_CFLAGS = -fobjc-arc -O3

# 7. ربط مكتبات النظام الأساسية
AntiCrashPro_FRAMEWORKS = Foundation UIKit

# 8. أمر البناء النهائي
include $(THEOS_MAKE_PATH)/tweak.mk
