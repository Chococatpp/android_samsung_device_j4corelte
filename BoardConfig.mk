#
# Copyright (C) 2019 The LineageOS Project
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

DEVICE_PATH := device/samsung/j4corelte
BOARD_VENDOR := samsung

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# Platform
TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno308

# Bootloader			
TARGET_BOOTLOADER_BOARD_NAME := MSM8937
TARGET_NO_BOOTLOADER := true

# Security patch level
VENDOR_SECURITY_PATCH := 2020-11-01

# Kernel
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000 --board SRPRH01B001KU --kernel_offset 0x00008000 --second_offset 0x00f00000
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/j4corelte
TARGET_KERNEL_CONFIG := j4corelte_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-
TARGET_COMPILE_WITH_MSM_KERNEL := true
ARCH_ARM_HAVE_NEON := true

# ExFAT target
TARGET_EXFAT_DRIVER := sdfat


# FM
BOARD_HAS_QCA_FM_SOC := "cherokee"
BOARD_HAVE_QCOM_FM := true



# ANT
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
AUDIO_FEATURE_ENABLED_COMPRESS_CAPTURE := false
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := false
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := false
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
#TARGET_AUDIOHAL_VARIANT := samsung
AUDIO_FEATURE_SAMSUNG_DUAL_SIM := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
QCOM_BT_USE_SMD_TTY := true
QCOM_BT_USE_BTNV := true

# Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true
TARGET_USES_QTI_CAMERA_DEVICE := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_USES_MEDIA_EXTENSIONS := true

# API Override
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /vendor/bin/mm-qcamera-daemon=27 \
    /system/vendor/bin/mm-qcamera-daemon=27

# Dex
#ifeq ($(HOST_OS),linux)
#  ifneq ($(TARGET_BUILD_VARIANT),eng)
#    WITH_DEXPREOPT ?= true
#    WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY ?= true
#  endif
#endif



# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
#BOARD_CHARGER_SHOW_PERCENTAGE := true


# Dexpreopt To lower the first boot time
WITH_DEXPREOPT := true

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
#DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/framework_compatibility_matrix.xml


# Keystore
#TARGET_PROVIDES_KEYMASTER := true

# Encryption
#TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/cryptfs_hw
#TARGET_HW_DISK_ENCRYPTION := true
#TARGET_SWV8_DISK_ENCRYPTION := true

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1644167168
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13260271616 
BOARD_VENDORIMAGE_PARTITION_SIZE := 260046848
BOARD_CACHEIMAGE_PARTITION_SIZE := 73400320
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
TARGET_USES_MKE2FS=true


TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

BOARD_ROOT_EXTRA_SYMLINKS := \
    /vendor/dsp:/dsp \
    /vendor/firmware_mnt:/firmware \
    /vendor/persist:/persist

# Graphics
BOARD_USES_ADRENO := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_COLOR_METADATA := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
#USE_OPENGL_RENDERER := true
#TARGET_BOOTANIMATION_HALF_RES := true
#TARGET_HAS_WIDE_COLOR_DISPLAY := true

# Lights
TARGET_PROVIDES_LIBLIGHT :=true

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true

# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# RIL
ENABLE_VENDOR_RIL_SERVICE := true
BOARD_PROVIDES_LIBRIL := true
#TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/vendor/lib/libsec-ril.so|libshims_ril.so \
    /system/vendor/lib/libsec-ril-dsds.so|libshims_ril.so
    
    
#Audio primary
#BOARD_PROVIDES_LIBAUDIO := true

# Root
BOARD_ROOT_EXTRA_FOLDERS := config omr efs bt_firmware

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# SELinux
include device/qcom/sepolicy/sepolicy.mk
#include system/sepolicy/Android.mk
BOARD_SEPOLICY_DIRS += system/sepolicy/public

# LineageOS Hardware
JAVA_SOURCE_OVERLAYS := org.lineageos.hardware|$(DEVICE_PATH)/lineagehw|**/*.java

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/android_touch/doubletap2wake"

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
BOARD_VNDK_VERSION := current
BOARD_VNDK_RUNTIME_DISABLE := true
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true


# OTA Assert
TARGET_OTA_ASSERT_DEVICE :=j4corelte,j4corelte_mea_open,j4Corelte,j4coreub, j4coreux

# Power
TARGET_USES_NON_LEGACY_POWERHAL := true
TARGET_HAS_NO_WLAN_STATS := true

# Reduce system image size by limiting java debug info.
#PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# Speed profile services and wifi-service to reduce RAM and storage.
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile

# Malloc
MALLOC_SVELTE := true

# HWUI
HWUI_COMPILE_FOR_PERF := true

# SurfaceFlinger
TARGET_USE_QCOM_SURFACEFLINGER := true


# WiFi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
PRODUCT_VENDOR_MOVE_ENABLED := true
TARGET_DISABLE_WCNSS_CONFIG_COPY := true
#WIFI_HIDL_FEATURE_DISABLE_AP_MAC_RANDOMIZATION := true
#WIFI_DRIVER_FW_PATH_AP := "ap"
#WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HAVE_SAMSUNG_WIFI := true



-include vendor/samsung/j4corelte/BoardConfigVendor.mk
