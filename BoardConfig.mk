USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/sony/nozomi/BoardConfigVendor.mk

#inherit from the common fuji definitions
-include device/sony/fuji-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := cyanogen_fuji_nozomi_defconfig

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 16

# the following two sizes are generous guesses
# since these partitions are not visible
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000

# Recovery
TARGET_RECOVERY_INITRC := device/sony/nozomi/recovery/init.rc
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072

#TWRP flags
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_HAS_NO_RECOVERY_PARTITION := true
TW_FLASH_FROM_STORAGE := true
BOARD_HAS_NO_REAL_SDCARD := true

BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p15

TARGET_OTA_ASSERT_DEVICE := LT26i,nozomi
