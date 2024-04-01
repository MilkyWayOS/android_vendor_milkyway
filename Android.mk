# Version meta-info
CODENAME := "mentha"
BUILD_NUMBER_FROM_FILE := "MilkyWayOS-2.0-$(CODENAME)-alpha1-$(TARGET_BUILD_VARIANT)"

# Include all packages makefiles
include $(call all-makefiles-under,$(LOCAL_PATH))
