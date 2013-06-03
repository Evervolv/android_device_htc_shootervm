#
# Copyright (C) 2011 The Evervolv Project
# Portions Copyright (C) 2011 The CyanogenMod Project
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

# overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/shootervm/overlay

# Voicemail and APN
PRODUCT_COPY_FILES += \
    device/htc/shootervm/configs/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/shootervm/configs/voicemail-conf.xml:system/etc/voicemail-conf.xml

# shooter configs
$(call inherit-product, device/htc/shooter/device.mk)
