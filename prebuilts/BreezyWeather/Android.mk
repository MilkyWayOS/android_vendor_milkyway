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
     lib/arm64-v8a/libnrb.so \
     lib/arm64-v8a/libsqlite3x.so
LOCAL_SDK_VERSION := 34
include $(BUILD_PREBUILT)
