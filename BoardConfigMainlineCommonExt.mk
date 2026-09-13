#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

USES_DEVICE_MAINLINE_COMMON_EXT := true

# Include the fragments
-include $(MAINLINE_COMMON_EXT_PATH)/optional/*/board.mk

ifneq ($(MAINLINE_COMMON_DISABLE_COMMON_BOARD_DEFS),true)

endif # !MAINLINE_COMMON_DISABLE_COMMON_BOARD_DEFS
