OpenVoiceOS is designed to be customized, rebranded, or otherwise modified. Below are some tips to get started
with creating a custom image.

## Adding Extra Files
Additional files can be arbitrarily added to the image by placing them in `buildroot-external/rootfs-overlay`.


## SSH Login Message
To change what is printed in the terminal when logging in, `buildroot-external/rootfs-overlay/home/mycroft/cli_login.sh`
may be modified to print any welcome message, tips, etc.


## Creating a New Build Config
To modify what packages are included in an image, a new config can be added to `buildroot-external/configs`. The filename
should end with `_defconfig` for compatibility with the Makefile.
# TODO: Confirm this is accurate and expand


