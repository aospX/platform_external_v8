LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= samples/shell.cc
LOCAL_MODULE := v8shell

LOCAL_CPP_EXTENSION := .cc

LOCAL_SHARED_LIBRARIES := libcutils

# proteus:
ifeq ($(PROTEUS_DEVICE_API), true)
LOCAL_CFLAGS += -DUSING_V8_SHARED
LOCAL_SHARED_LIBRARIES += libv8
else
LOCAL_STATIC_LIBRARIES += libv8
endif

LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

include $(BUILD_EXECUTABLE)
