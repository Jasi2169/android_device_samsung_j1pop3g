# Copyright (C) 2010 The Android Open Source Project
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
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from those products. Most specific first.
#$(call inherit-product, device/samsung/j1pop3g/device.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/j1pop3g/device.mk)

PRODUCT_NAME := omni_j1pop3g
PRODUCT_DEVICE := j1pop3g
PRODUCT_RELEASE_NAME := j1pop3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J110H
