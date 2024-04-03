#
# Copyright (C) 2018-2019,2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/polaris/device.mk)

# Inherit common ArrowOS configurations
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit some common ArrowOS stuff.
ARROW_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_polaris
PRODUCT_DEVICE := polaris
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2S
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := polaris

BUILD_FINGERPRINT := "Xiaomi/polaris/polaris:10/QKQ1.190828.002/V12.5.1.0.QDGCNXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="polaris-user 10 QKQ1.190828.002 V12.5.1.0.QDGCNXM release-keys" \
    TARGET_PRODUCT="polaris"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# ArrowOS additions
DEVICE_MAINTAINER := LuoYingPiaoXue