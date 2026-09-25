## Camera

### TARGET_CAMERA_PROVIDER_HAL
| Value | Directory | Description |
|-------|-----------|-------------|
| mainline | camera-provider-hal_mainline | V4L2 camera provider for internal and external (USB, HDMI capture) cameras. Handles external cameras itself, so it can not be combined with `TARGET_EXTERNAL_CAMERA_PROVIDER_HAL`. Check out `hardware/mainline/common/interfaces/camera/mainline/README.md` for details. |

### TARGET_CAMERA_PROVIDER_HAL_MAINLINE_HWDB
| Value | Description |
|-------|-------------|
| true | Default value, install the systemd camera hwdb (`70-cameras.hwdb`) for `TARGET_CAMERA_PROVIDER_HAL=mainline` |
| false | Do not install it; the target may provide its own in `/vendor/etc/camera/hwdb.d/` |

## Display

### TARGET_ENABLE_BOOTSPLASH
| Value | Directory | Description |
|-------|-----------|-------------|
| true | bootsplash | Install the optional early DRM/fbdev bootsplash in system_ext. If fbkeyboard is installed, request its stop before starting the splash. The device supplies `/product/etc/bootsplash.bmp` if a static fallback is wanted. |
