LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := BreezyWeather
LOCAL_SRC_FILES := BreezyWeather.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OPTIONAL_USES_LIBRARIES += \
		androidx.window.extensions \
		androidx.window.sidecar
LOCAL_DEX_PREOPT := false
LOCAL_PREBUILT_JNI_LIBS := \
     $(LOCAL_PATH)/lib/arm64-v8a/lib/libnrb.so \
     $(LOCAL_PATH)/lib/arm64-v8a/lib/libsqlite3x.so \
     $(LOCAL_PATH)/lib/armeabi-v7a/lib/libnrb.so \
     $(LOCAL_PATH)/lib/armeabi-v7a/lib/libsqlite3x.so \
     $(LOCAL_PATH)/lib/x86_64/lib/libnrb.so \
     $(LOCAL_PATH)/lib/x86_64/lib/libsqlite3x.so \
     $(LOCAL_PATH)/lib/arm64-v8a/lib/libnrb.so \
     $(LOCAL_PATH)/lib/arm64-v8a/lib/libsqlite3x.so \
include $(BUILD_PREBUILT)
