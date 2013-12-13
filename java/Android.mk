LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := LatinIme2Google

LOCAL_CERTIFICATE := shared

LOCAL_JNI_SHARED_LIBRARIES := libjni_latinime2

LOCAL_STATIC_JAVA_LIBRARIES := android-common

#LOCAL_AAPT_FLAGS := -0 .dict
# The following flag is required because we use a different package name
# com.google.android.inputmethod.latin in the LatinIME sandbox.
LOCAL_AAPT_FLAGS := --custom-package com.android.inputmethod.latin

LOCAL_SDK_VERSION := 8

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

include $(BUILD_PACKAGE)
