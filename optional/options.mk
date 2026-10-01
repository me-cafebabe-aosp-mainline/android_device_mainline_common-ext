#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

##### Availability information #####

##### Combinations #####

##### Components #####

# Camera
TARGET_CAMERA_PROVIDER_HAL ?= mainline

##### Replacements #####

ifeq ($(MAINLINE_COMMON_PREFER_EXT_MODULES),true)

# Audio
ifeq ($(TARGET_AUDIO_HAL),mainline)
TARGET_AUDIO_HAL := mainline_ext
endif
ifeq ($(TARGET_AUDIO_EFFECT_HAL),legacy)
TARGET_AUDIO_EFFECT_HAL := legacy_ext
endif

# Graphics HALs
ifeq ($(TARGET_GRAPHICS_COMPOSER_HAL),drmfb-composer)
TARGET_GRAPHICS_COMPOSER_HAL := drmfb-composer_ext
endif

# Sensors
ifeq ($(TARGET_SENSORS_HAL),mainline)
TARGET_SENSORS_HAL := mainline_ext
endif

endif # MAINLINE_COMMON_PREFER_EXT_MODULES
