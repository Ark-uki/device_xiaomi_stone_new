#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Matrixx stuff.
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

TARGET_EXCLUDES_AUDIOFX := true

# Matrixx Flags
MATRIXX_MAINTAINER := Mayuresh & Jonas
WITH_GMS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
WITH_BCR := true

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := stone
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 12 5G
PRODUCT_NAME := matrixx_stone

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sunstone_global-user 14 UKQ1.240624.001 OS2.0.5.0.UMQMIXM release-keys" \
    BuildFingerprint=Redmi/sunstone_global/sunstone:14/UKQ1.240624.001/OS2.0.5.0.UMQMIXM:user/release-keys \
    DeviceProduct=sunstone
