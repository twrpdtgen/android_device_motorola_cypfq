#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from cypfq device
$(call inherit-product, device/motorola/cypfq/device.mk)

PRODUCT_DEVICE := cypfq
PRODUCT_NAME := omni_cypfq
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g51 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cypfq_g-user 11 S2RYAS32.58-13-12-5-1-6 b19ff6 release-keys"

BUILD_FINGERPRINT := motorola/cypfq_g/cypfq:11/S2RYAS32.58-13-12-5-1-6/b19ff6:user/release-keys
