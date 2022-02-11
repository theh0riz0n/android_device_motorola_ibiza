#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from wayne-common
$(call inherit-product, device/motorola/motorola-common/ibiza.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    device/motorola/ibiza/overlay

# Init
PRODUCT_PACKAGES += \
    fstab.qcom

# Wifi
PRODUCT_PACKAGES += \
    IbizaWifiOverlay

# Inherit the proprietary files
$(call inherit-product, vendor/motorola/ibiza/ibiza-vendor.mk)
