#
# Copyright (C) 2018-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Bootleggers stuff
$(call inherit-product, vendor/404/configs/common.mk)

# Inherit from X00T device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_NAME := p404_X00T
PRODUCT_BRAND := asus
PRODUCT_DEVICE := X00T
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := ZenFone Max Pro M1

PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := X00T

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="X00T" \
    TARGET_DEVICE="X00T" \
    PRIVATE_BUILD_DESC="coral-user 10 QQ3A.200705.005 6506677 release-keys"

TARGET_BOOT_ANIMATION_RES := 1080

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/coral/coral:10/QQ3A.200705.002/6506677:user/release-keys

# The following system and vendor props will be set by vendor init
PRODUCT_SYSTEM_PROPERTY_BLACKLIST := \
    ro.product.model
