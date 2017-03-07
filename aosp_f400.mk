#
# Copyright 2014 The CyanogenMod Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Inherit from f400 device
$(call inherit-product, device/lge/f400/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := f400
PRODUCT_NAME := aosp_f400
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-F400
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_kt_kr" \
    BUILD_FINGERPRINT="lge/g3_kt_kr/g3:6.0/MRA58K/1606909301116:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_kt_kr-user 6.0 MRA58K 1606909301116 release-keys"
