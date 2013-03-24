$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libcamera_intermediates)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libcamera_intermediates/export_includes)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ifeq ($(TARGET_DISABLE_METADATA_IN_BUFFERS),true)
      LOCAL_CFLAGS += -DDISABLE_META
endif

LOCAL_C_FLAGS        += -O3
LOCAL_MODULE_PATH    := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE         := camera.$(TARGET_BOARD_PLATFORM)

LOCAL_MODULE_TAGS    := optional

LOCAL_SRC_FILES      := cameraHal.cpp
LOCAL_C_INCLUDES     := $(TARGET_SPECIFIC_HEADER_PATH) frameworks/av/services/ frameworks/base/include frameworks/native/include/
LOCAL_C_INCLUDES     += hardware/libhardware/include/ hardware/libhardware/modules/gralloc/ hardware

LOCAL_SHARED_LIBRARIES := liblog libutils libcutils
LOCAL_SHARED_LIBRARIES += libui libhardware libcamera_client
LOCAL_SHARED_LIBRARIES += libdl libbinder libcamera

include $(BUILD_SHARED_LIBRARY)
