#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_GRAPHICS_COMPOSER_HAL),drmfb-composer_ext)

ifeq ($(TARGET_DRMFB_COMPOSER_USE_HIDL),true)
BOARD_VENDOR_SEPOLICY_DIRS += hardware/mainline/common/interfaces/graphics/composer/drmfb/sepolicy
endif

endif # TARGET_GRAPHICS_COMPOSER_HAL
