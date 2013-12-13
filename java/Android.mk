LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := LatinIME

LOCAL_CERTIFICATE := shared

LOCAL_JNI_SHARED_LIBRARIES := libjni_latinime

LOCAL_STATIC_JAVA_LIBRARIES := android-common

#LOCAL_AAPT_FLAGS := -0 .dict

LOCAL_SDK_VERSION := 8

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

# Define LOCAL_DICTIONARY_RESOURCE_DIR in order to overlay dictionaries.
# The overlay dictionary resource directory should have dictionary files such
# as raw-en/main.dict, raw-es/main.dict per locale.
ifneq ($(strip $(LOCAL_DICTIONARY_RESOURCE_DIR)),)
LOCAL_RESOURCE_DIR := $(LOCAL_DICTIONARY_RESOURCE_DIR) $(LOCAL_PATH)/res
endif

include $(BUILD_PACKAGE)
