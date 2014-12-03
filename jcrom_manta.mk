#
# Copyright 2013 The Android Open-Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, device/samsung/manta/device.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mantaray TARGET_DEVICE=manta BUILD_FINGERPRINT=google/mantaray/manta:5.0.1/LRX22C/1602158:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 5.0.1 LRX22C 1602158 release-keys"

PRODUCT_NAME := jcrom_manta
PRODUCT_DEVICE := manta
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := owner path

#JCROM
$(call inherit-product, jcrom/samsung/manta/device-manta.mk)
$(call inherit-product, jcrom/common/common.mk)
