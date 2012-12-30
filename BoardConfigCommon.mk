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

## Camera
BOARD_USES_ECLAIR_LIBCAMERA := true
COMMON_GLOBAL_CFLAGS += -DECLAIR_LIBCAMERA
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
BUILD_CAMERAHAL := true
#BOARD_CPU_COLOR_CONVERT := true

## Kernel
TARGET_KERNEL_SOURCE := kernel/semc/msm7x27
# Copy SEMC Kernel Headers here if necessary, DO NOT use Android auto-generated headers
TARGET_SPECIFIC_HEADER_PATH := device/semc/msm7x27-common/include
BOARD_KERNEL_CMDLINE := console=null

## Browser & WebKit
ENABLE_WEBGL := true

## Boot loader & recovery
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"

## Partition Sizes
# Fix this up by examining /proc/mtd on a running device
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1
BOARD_CUSTOM_BOOTIMG_MK := device/semc/msm7x27-common/custombootimg.mk

## Graphics
# Force non usage of VSync
BOARD_EGL_NEEDS_LEGACY_FB := true

## Qualcomm and Adreno Hardware
COMMON_GLOBAL_CFLAGS += -DANCIENT_GL

## GPS
# Enable the GPS HAL & AMSS version to use for GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := delta
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

## Lights
TARGET_PROVIDES_LIBLIGHT := true

## Audio, Bluetooth & FM Radio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_AUDIO_LEGACY := false
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/msm7x27-common/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/semc/msm7x27-common/bluetooth/btvendor_semc7x27.txt
BOARD_COMBO_DEVICE_SUPPORTED := false
TARGET_USE_SOFTWARE_AUDIO_AAC := true
TARGET_PROVIDES_LIBAUDIO := true

## RIL
BOARD_USES_LEGACY_RIL := true

## USB
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

## Touch screen compatibility for Jelly Bean
BOARD_USE_LEGACY_TOUCHSCREEN := true

## Wi-Fi & Wi-Fi HotSpot
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WLAN_DEVICE := wl1271
BOARD_SOFTAP_DEVICE := wl1271
WPA_SUPPLICANT_VERSION := VER_0_6_X
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/tiwlan_drv.ko
WIFI_DRIVER_MODULE_NAME := tiwlan_drv
WIFI_FIRMWARE_LOADER := wlan_loader
WIFI_EXT_MODULE_PATH := /system/lib/modules/sdio.ko
WIFI_EXT_MODULE_NAME := sdio
WIFI_AP_DRIVER_MODULE_PATH := /system/lib/modules/tiap_drv.ko
WIFI_AP_DRIVER_MODULE_NAME := tiap_drv
WIFI_AP_FIRMWARE_LOADER := wlan_ap_loader
BOARD_HAVE_LEGACY_HOSTAPD := true
BOARD_HOSTAPD_NO_ENTROPY := true
PRODUCT_DEFAULT_WIFI_CHANNELS := 14

## ARMv6-compatible processor rev 5 (v6l)
ARCH_ARM_HAVE_VFP := true

## Display
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
BOARD_USE_SCREENCAP := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_HAVE_HDMI_SUPPORT := false
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
TARGET_USES_GENLOCK := true
TARGET_USES_OVERLAY := false
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_ION := false
TARGET_USES_SF_BYPASS := false
SMALLER_FONT_FOOTPRINT := true

## CFLAGS
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DFORCE_CPU_UPLOAD
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS

## ODEX
WITH_DEXPREOPT := false

## OTA package maker
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/semc/msm7x27-common/releasetools/semc_ota_from_target_files
