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

#
# This file sets variables that control the way modules are built
# throughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# Use the Qualcomm common folder
include device/qcom/msm7x27/BoardConfigCommon.mk

## Kernel
TARGET_SPECIFIC_HEADER_PATH := device/semc/msm7x27-common/include
TARGET_KERNEL_SOURCE := kernel/semc/msm7x27
BOARD_KERNEL_CMDLINE := console=null
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_CUSTOM_BOOTIMG_MK := device/semc/msm7x27-common/custombootimg.mk

## Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

## WebKit
ENABLE_WEBGL := true
TARGET_WEBKIT_USE_MORE_MEMORY := true

## Camera
BOARD_USES_ECLAIR_LIBCAMERA := true
COMMON_GLOBAL_CFLAGS += -DECLAIR_LIBCAMERA
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
BUILD_CAMERAHAL := true
TARGET_DISABLE_METADATA_IN_BUFFERS := true
#BOARD_CPU_COLOR_CONVERT := true

## Qualcomm, display
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os

## GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE_LEGACY := msm7x27 # don't use hardware/qcom/gps version yet
BOARD_USES_QCOM_LIBRPC := true

## Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/semc/msm7x27-common/bluetooth/btvendor_semc7x27.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/msm7x27-common/bluetooth

## Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_WLAN_DEVICE := wl12xx_mac80211
BOARD_SOFTAP_DEVICE := wl12xx_mac80211
PRODUCT_DEFAULT_WIFI_CHANNELS := 14
USES_TI_MAC80211 := true
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211

## RIL
TARGET_PROVIDES_LIBRIL := true
BOARD_USES_LEGACY_RIL := true
BOARD_FORCE_RILD_AS_ROOT := true

## UMS
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

## Legacy touchscreen support
BOARD_USE_LEGACY_TOUCHSCREEN := true

## Device specific libs
TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBLIGHT := true

## SEMC has weird framebuffer
TARGET_NO_INITLOGO := true

## Fix colors in panorama mode
BOARD_CPU_COLOR_CONVERT := true

## OTA package maker
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/semc/msm7x27-common/releasetools/semc_ota_from_target_files
TARGET_OTA_EXTRAS_FILE := device/semc/msm7x27-common/releasetools/extras.txt
SMALLER_FONT_FOOTPRINT := true

## Recovery
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
