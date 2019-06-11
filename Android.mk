LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES:= mmc.c mmc_cmds.c lsmmc.c
LOCAL_SRC_FILES += 3rdparty/hmac_sha/sha2.c 3rdparty/hmac_sha/hmac_sha2.c
LOCAL_CFLAGS += -Wno-error -Wno-sign-compare -Wno-implicit-function-declaration
LOCAL_CFLAGS += -Wno-missing-field-initializers
LOCAL_MODULE := mmc_utils
LOCAL_SHARED_LIBRARIES := libcutils libc
LOCAL_C_INCLUDES += $(PRODUCT_OUT)/obj/kernel/include
LOCAL_C_INCLUDES += $(PRODUCT_OUT)/obj/kernel/arch/arm64/include
LOCAL_ADDITIONAL_DEPENDENCIES += $(PRODUCT_OUT)/obj/kernel/usr
include $(BUILD_EXECUTABLE)
