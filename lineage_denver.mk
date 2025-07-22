#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from denver device
$(call inherit-product, device/motorola/denver/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_denver
PRODUCT_DEVICE := denver
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g stylus 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="denver_global-user 12 S2RE32.29-16-1-5-18 aa2da-5f4e5 release-keys" \
    BuildFingerprint=motorola/denver_global/denver:12/S2RE32.29-16-1-5-18/aa2da-5f4e5:user/release-keys \
    DeviceProduct=denver_global
