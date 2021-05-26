OpenVoiceOS is designed to be customized, rebranded, or otherwise modified. Below are some tips to get started
with creating a custom image.

## Adding Extra Files
Additional files can be arbitrarily added to the image by placing them in `buildroot-external/rootfs-overlay`.

## Adding Packages
Additional packages may be added to `buildroot-external/package`. An added Python package should have a 
`Config.in`, `{package}.mk`, and optionally a `{package}.hash` file. The `.mk` file contains references to where the 
package should be built from. The `Config.in` file contains config for the build system. The `hash` file is optional, but
recommended to catch corrupted downloads or potential MITM attacks.

## SSH Login Message
To change what is printed in the terminal when logging in, `buildroot-external/rootfs-overlay/home/mycroft/cli_login.sh`
may be modified to print any welcome message, tips, etc.


## Creating a New Build Config
To modify what packages are included in an image, a new config can be added to `buildroot-external/configs`. The filename
should end with `_defconfig` for compatibility with the Makefile.
# TODO: Confirm this is accurate and expand


