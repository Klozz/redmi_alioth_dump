#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_DEVICE := alioth
PRODUCT_NAME := omni_alioth
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2012K11AC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="alioth_global-user 12 RKQ1.211001.001 V13.0.7.0.SKHMIXM release-keys"

BUILD_FINGERPRINT := Redmi/alioth_global/alioth:12/RKQ1.211001.001/V13.0.7.0.SKHMIXM:user/release-keys
