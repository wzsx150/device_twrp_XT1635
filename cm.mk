# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_COPY_FILES += \
    device/twrp/XT1635/twrp.fstab:recovery/root/etc/twrp.fstab


PRODUCT_NAME := cm_XT1635
PRODUCT_DEVICE := XT1635
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT1635-03
PRODUCT_MANUFACTURER := motorola

TARGET_VENDOR_PRODUCT_NAME := addison_retcn
TARGET_VENDOR_DEVICE_NAME := addison

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=addison PRODUCT_NAME=addison_retcn

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="motorola/addison_retcn/addison:6.0.1/MCN24.104-35.2/1:user/release-keys" \
    BUILD_THUMBPRINT="6.0.1/MCN24.104-35.2/1:user/release-keys"



WITH_CM_CHARGER := false


TARGET_UNOFFICIAL_BUILD_ID := wzsx150
