#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_GRAPHICS_COMPOSER_HAL),drmfb-composer_ext)

ifeq ($(TARGET_DRMFB_COMPOSER_USE_HIDL),true)

PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.1-service.drmfb
ifeq ($(TARGET_GRAPHICS_ALLOCATOR_HAL),minigbm)
$(call soong_config_set_bool,drmfb_composer,uses_minigbm,true)
endif # TARGET_GRAPHICS_ALLOCATOR_HAL

else # !TARGET_DRMFB_COMPOSER_USE_HIDL

PRODUCT_PACKAGES += \
    com.android.hardware.graphics.composer.drmfb_ext

endif # TARGET_DRMFB_COMPOSER_USE_HIDL

endif # TARGET_GRAPHICS_COMPOSER_HAL
