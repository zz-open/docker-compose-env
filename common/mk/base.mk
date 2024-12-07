# 必须使用 := 定义，否则路径返回的是当前执行路径
_COMMON_MKFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
_COMMON_MKFILE_DIR_PATH := $(dir $(_COMMON_MKFILE_PATH))
COMMON_ROOT_DIR_PATH := $(_COMMON_MKFILE_DIR_PATH)

COMMON_ENV_FILE_PATH := $(COMMON_ROOT_DIR_PATH).env.common
COMMON_MKFILE_PATH := $(COMMON_ROOT_DIR_PATH)common.mk
PWD=${CURDIR}

# Linux ############################################################
MV=mv