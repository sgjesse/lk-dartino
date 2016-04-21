LOCAL_DIR := $(GET_LOCAL_DIR)

DARTINO_BASE := ../../dartino-sdk

MODULE := $(LOCAL_DIR)

MODULE_DEPS += \
	lib/libm \
	lib/minip \
	dartino-sdk

MODULE_SRCS += \
	$(LOCAL_DIR)/dartino_runner.c \
	$(LOCAL_DIR)/missing.c \
	$(LOCAL_DIR)/print_args.cpp

MODULE_INCLUDES += $(LOCAL_DIR)/../../../dartino-sdk

include make/module.mk
