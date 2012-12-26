# Copyright (C) 2012 The Android Open Source Project
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

# Hardware
PRODUCT_PACKAGES += \
    gps.delta \
    sensors.msm7x27 \
    lights.msm7x27 \
    audio.primary.msm7x27 \
    audio_policy.msm7x27 \
    audio.usb.default \

# Camera
PRODUCT_PACKAGES += \
    camera.msm7x27

# Power HAL
PRODUCT_PACKAGES += \
    power.msm7x27

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libOmxVdec \
    libOmxVenc \

# Extra packages
PRODUCT_PACKAGES += \
    screencap \
    hostap \
    rzscontrol \
    com.android.future.usb.accessory \
    make_ext4fs \
    setup_fs \
    wlan_loader \
    wlan_cu \
    dhcpcd.conf

# Bugmailer
PRODUCT_PACKAGES += send_bug
PRODUCT_COPY_FILES += \
        system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
        system/extras/bugmailer/send_bug:system/bin/send_bug

# For emmc phone storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.phone_storage=0

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distict.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Config files
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/etc/hw_config.sh:system/etc/hw_config.sh

# Extra prebuilt binaries
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/semc/msm7x27-common/prebuilt/app/SystemConnector.apk:system/app/SystemConnector.apk \
    device/semc/msm7x27-common/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/semc/msm7x27-common/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/semc/msm7x27-common/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/semc/msm7x27-common/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/semc/msm7x27-common/prebuilt/xbin/remount:system/xbin/remount

# Keylayouts
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/systemconnector.kl:system/usr/keylayout/systemconnector.kl

# Wifi and hotspot
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/bin/dhcpcd:system/bin/dhcpcd \
    device/semc/msm7x27-common/prebuilt/bin/tiap_loader.sh:system/bin/tiap_loader.sh \
    device/semc/msm7x27-common/prebuilt/bin/tiwlan_loader:system/bin/tiwlan_loader \
    device/semc/msm7x27-common/prebuilt/etc/init.d/10dnsconf:system/etc/init.d/10dnsconf \
    device/semc/msm7x27-common/prebuilt/etc/init.d/10hostapconf:system/etc/init.d/10hostapconf \
    device/semc/msm7x27-common/prebuilt/etc/wifi/softap/hostapd.conf:system/etc/wifi/softap/hostapd.conf \
    device/semc/msm7x27-common/prebuilt/etc/wifi/dnsmasq.conf:system/etc/wifi/dnsmasq.conf \
    device/semc/msm7x27-common/prebuilt/etc/wifi/tiwlan_firmware.bin:system/etc/wifi/tiwlan_firmware.bin \
    device/semc/msm7x27-common/prebuilt/etc/wifi/softap/tiwlan_firmware_ap.bin:system/etc/wifi/softap/tiwlan_firmware_ap.bin

# A2SD and extra init files
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/bin/a2sd:system/bin/a2sd \
    device/semc/msm7x27-common/prebuilt/etc/init.d/05mountext:system/etc/init.d/05mountext \
    device/semc/msm7x27-common/prebuilt/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd \
    device/semc/msm7x27-common/prebuilt/etc/init.d/20link2sd:system/etc/init.d/20link2sd \
    device/semc/msm7x27-common/prebuilt/xbin/rzscontrol:system/xbin/rzscontrol \
    device/semc/msm7x27-common/prebuilt/xbin/zipalign:system/xbin/zipalign

# Adreno 200 files
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/etc/adreno_config.txt:system/etc/adreno_config.txt
