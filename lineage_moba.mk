#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from moba device
$(call inherit-product, device/lenovo/moba/device.mk)

PRODUCT_DEVICE := moba
PRODUCT_NAME := lineage_moba
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo L79031
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="moba-user 12 SKQ1.220119.001 13.5.351_221103 release-keys"

BUILD_FINGERPRINT := Lenovo/moba/moba:12/SKQ1.220119.001/13.5.351_221103:user/release-keys
