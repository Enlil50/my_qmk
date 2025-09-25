# Build Options
#   change yes to no to disable
#
# Copyright 2025 Elil50 <@Elil50>
# SPDX-License-Identifier: GPL-2.0-or-later 

CONVERT_TO=rp2040_ce

# RGBLIGHT_ENABLE = yes
# RGBLIGHT_SUPPORTED = yes
# RGB_MATRIX_SUPPORTED = yes

TAP_DANCE_ENABLE = yes
COMBO_ENABLE = yes
KEY_OVERRIDE_ENABLE = yes
MOUSEKEY_ENABLE = yes


MY_TRACKPOINT_ENABLE = yes
ifeq ($(MY_TRACKPOINT_ENABLE),yes)
   PS2_MOUSE_ENABLE = yes
   PS2_ENABLE = yes
   PS2_DRIVER = vendor
   DEFERRED_EXEC_ENABLE = yes
   OPT_DEFS += -DMY_TRACKPOINT_ENABLE #define it in C files
endif


MY_UNICODE_ENABLE = yes
ifeq ($(MY_UNICODE_ENABLE),yes)
   OS_DETECTION_ENABLE = yes
   UNICODEMAP_ENABLE = yes
   OPT_DEFS += -DMY_UNICODE_ENABLE #define it in C files
endif
