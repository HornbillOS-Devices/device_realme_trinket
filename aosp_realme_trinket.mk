#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/realme/realme_trinket/device.mk)

# Inherit some common Aosp stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Setup Gapps options
IS_PHONE := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_MINIMAL_APPS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := false

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Realme
PRODUCT_DEVICE := realme_trinket
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := aosp_realme_trinket

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="realme_trinket" \
    TARGET_DEVICE="realme_trinket" \
    DEVICE_MAINTAINERS="XNXXGANG"

BUILD_FINGERPRINT := "trinket-user-10-QKQ1.200209.002--release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-realme

#WithGAPPS
#TARGET_GAPPS_ARCH := arm64
#TARGET_INCLUDE_GAPPS := true

#unecessary thingy
IS_PHONE := true
