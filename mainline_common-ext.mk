#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

MAINLINE_COMMON_EXT_PATH := device/mainline/common-ext

# Include the fragments
-include $(MAINLINE_COMMON_EXT_PATH)/optional/*/product.mk

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(MAINLINE_COMMON_EXT_PATH) \
    hardware/mainline/common-ext

ifneq ($(MAINLINE_COMMON_DISABLE_COMMON_PRODUCT_DEFS),true)

endif # !MAINLINE_COMMON_DISABLE_COMMON_PRODUCT_DEFS
