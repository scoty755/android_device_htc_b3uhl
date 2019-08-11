#
# Copyright (C) 2015 The CyanogenMod Project
# Copyright 2016-2018 The LineageOS Project
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

BOARD_VENDOR := htc

TARGET_SPECIFIC_HEADER_PATH := device/htc/b3uhl/include

# Asserts
TARGET_OTA_ASSERT_DEVICE := htc_b3uhl,htc_himaul,b3uhl,b3


# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53.a57

TARGET_BOARD_PLATFORM := msm8994
TARGET_BOARD_PLATFORM_GPU := qcom-adreno430

TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8994
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_BASE := 0x00078000
BOARD_KERNEL_CMDLINE := console=none androidboot.hardware=b3uhl user_debug=31 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 boot_cpus=0-5 androidkey.dummy=1 androidusb.pid=0x065e
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01f88000 --tags_offset 0x01d88000
BOARD_RAMDISK_OFFSET := 0x02000000
ENABLE_CPUSETS := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/htc/msm8994
TARGET_KERNEL_CONFIG := lineageos_b3uhl_defconfig

# Charger
BOARD_CHARGING_CMDLINE_NAME := "androidboot.mode"
BOARD_CHARGING_CMDLINE_VALUE := "chargerlogo"
WITH_LINEAGE_CHARGER := false

# Display
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 1426063360
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4697620480
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3758096384
TARGET_FS_CONFIG_GEN := device/htc/b3uhl/config.fs
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/


# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true

# Recovery
BOARD_SUPPRESS_SECURE_ERASE := true

# inherit from the proprietary version
-include vendor/htc/b3uhl/BoardConfigVendor.mk

# TWRP specific build flags
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_HAS_DOWNLOAD_MODE := true
#TW_INCLUDE_CRYPTO := true
TW_NO_EXFAT_FUSE := true
#TARGET_RECOVERY_DEVICE_MODULES := twrpdec
#TW_RECOVERY_ADDITIONAL_RELINK_FILES := $(OUT)/recovery/root/sbin/twrpdec
#TARGET_USES_LOGD := true
#TWRP_INCLUDE_LOGCAT := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"