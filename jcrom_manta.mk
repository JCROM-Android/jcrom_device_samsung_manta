#
# Copyright 2014 JCROM Project
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
# This file is the build configuration for a full Android
# build for manta hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and manta, hence its name.
#

#JCROM
$(call inherit-product-if-exists, jcrom/samsung/manta/device-common.mk)

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        MagicSmokeWallpapers \
        VisualizationWallpapers \
        librs_jni

#PRODUCT_PROPERTY_OVERRIDES += \
#        net.dns1=8.8.8.8 \
#        net.dns2=8.8.4.4

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mantaray TARGET_DEVICE=manta BUILD_FINGERPRINT=google/mantaray/manta:4.4.4/KTU84P/1227136:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.4.4 KTU84P 1227136 release-keys"

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, device/samsung/manta/device.mk)
$(call inherit-product-if-exists, vendor/samsung/manta-ext/manta-ext-vendor.mk)

PRODUCT_NAME := jcrom_manta
PRODUCT_DEVICE := manta
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := owner path

#JCROM
$(call inherit-product-if-exists, jcrom/samsung/manta/device-manta.mk)

