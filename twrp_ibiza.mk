#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ibiza device
$(call inherit-product, device/motorola/ibiza/device.mk)

PRODUCT_DEVICE := ibiza
PRODUCT_NAME := twrp_ibiza
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(50)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ibiza_retail-user 11 S1RFS32.27-25-7 8a665 release-keys"

BUILD_FINGERPRINT := motorola/ibiza_retail/ibiza:11/S1RFS32.27-25-7/8a665:user/release-keys
