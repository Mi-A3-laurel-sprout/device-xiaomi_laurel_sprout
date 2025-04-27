#
# Copyright (C) 2018-2019 The lineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Derfest stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from laurel_sprout device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := laurel_sprout
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_laurel_sprout
PRODUCT_MODEL := Mi A3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := laurel_sprout

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="laurel_sprout-user 11 RKQ1.200903.002 V12.0.15.0.RFQMIXM release-keys" \
    BuildFingerprint=google/redfin/redfin:12/SP1A.211105.003/7757856:user/release-keys \
    DeviceName=laurel_sprout \
    DeviceProduct=laurel_sprout \
    SystemDevice=laurel_sprout \
    SystemName=laurel_sprout

# Props
AXION_CAMERA_REAR_INFO := 48,8,2
AXION_CAMERA_FRONT_INFO := 32
AXION_MAINTAINER := PowerX-NOT
AXION_PROCESSOR := Qualcomm_SM6125_Snapdragon_665_(11_nm)
BYPASS_CHARGE_SUPPORTED := true

# Define small and big core groups
AXION_CPU_SMALL_CORES := 0,1,2,3
AXION_CPU_BIG_CORES := 4,5,6,7
