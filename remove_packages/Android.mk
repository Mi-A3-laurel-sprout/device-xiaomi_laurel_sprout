LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePkgs
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
		Drive \
		Maps \
		PrebuiltGmail \
		RecorderPrebuilt \
		talkback \
		Velvet \
		CalculatorGooglePrebuilt \
                RadioConfigLib \
                Chrome-Stub \
                TrichromeLibrary \
                TipsPrebuilt \
                OdadPrebuilt \
                DCMO \
                ConnMO \
                MeetPrebuilt \
		YouTube

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
