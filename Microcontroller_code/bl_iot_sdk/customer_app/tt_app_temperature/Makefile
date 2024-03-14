PROJECT_NAME := tt_app_temperature
PROJECT_PATH := $(abspath .)
PROJECT_BOARD := evb
export PROJECT_PATH PROJECT_BOARD

-include ./proj_config.mk

ifeq ($(origin BL60X_SDK_PATH), undefined)
$(error ****** Please SET BL60X_SDK_PATH ******)
endif

COMPONENTS_BLSYS   := bltime blfdt blmtd bloop loopadc looprt loopset
COMPONENTS_VFS     := romfs

INCLUDE_COMPONENTS += freertos_riscv_ram bl602 bl602_std hal_drv vfs yloop utils cli blog blog_testc
INCLUDE_COMPONENTS += $(COMPONENTS_BLSYS)
INCLUDE_COMPONENTS += $(COMPONENTS_VFS)
INCLUDE_COMPONENTS += $(PROJECT_NAME)

include $(BL60X_SDK_PATH)/make_scripts_riscv/project.mk
