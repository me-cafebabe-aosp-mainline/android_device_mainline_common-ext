#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_SENSORS_HAL),mainline_ext)

PRODUCT_PACKAGES += \
    com.android.hardware.sensors.mainline_ext

endif # TARGET_SENSORS_HAL
