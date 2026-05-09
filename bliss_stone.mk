#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Include own signing keys
$(call inherit-product-if-exists, vendor/lineage-priv/keys/keys.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
TARGET_SUPPORTS_OMX_SERVICE := false

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_NAME := bliss_stone
PRODUCT_DEVICE := stone
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 5G

PRODUCT_SYSTEM_NAME := sunstone_global
PRODUCT_SYSTEM_DEVICE := sunstone

# Flags
BLISS_BUILDTYPE := UNOFFICIAL
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_EXCLUDES_AUDIOFX := true
TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sunstone_global-user 14 UKQ1.240624.001 OS2.0.5.0.UMQMIXM release-keys" \
    BuildFingerprint=Redmi/sunstone_global/sunstone:14/UKQ1.240624.001/OS2.0.5.0.UMQMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

