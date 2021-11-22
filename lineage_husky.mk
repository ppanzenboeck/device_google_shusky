#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := husky
DEVICE_PATH := device/google/shusky
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/zuma/lineage_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="husky-user 15 AP3A.241005.015 12366759 release-keys" \
    BuildFingerprint=google/husky/husky:15/AP3A.241005.015/12366759:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)
