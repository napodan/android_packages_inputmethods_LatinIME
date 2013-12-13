LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES += $(LOCAL_PATH)/src

LOCAL_SRC_FILES := \
	jni/com_android_inputmethod_latin_BinaryDictionary.cpp \
	src/dictionary.cpp \
	src/char_utils.cpp

# NDK does not support sim build.
ifneq ($(TARGET_SIMULATOR),true)
  LOCAL_NDK_VERSION := 4
  LOCAL_SDK_VERSION := 8
else
  LOCAL_C_INCLUDES += $(JNI_H_INCLUDE)
endif

LOCAL_MODULE := libjni_latinime

LOCAL_MODULE_TAGS := user

include $(BUILD_SHARED_LIBRARY)
