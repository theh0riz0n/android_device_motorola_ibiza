#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from ibiza-common
include device/motorola/ibiza-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/ibiza

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Security patch level
VENDOR_SECURITY_PATCH := 2021-11-01

# Inherit the proprietary files
include vendor/motorola/ibiza/BoardConfigVendor.mk
