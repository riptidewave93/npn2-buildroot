# npn2-buildroot

Buildroot support for the FriendlyELEC NanoPi NEO2 Board.

## Building

In your Buildroot folder:
```
export BR2_EXTERNAL=~/Repos/npn2-buildroot
export BL31=$BR2_EXTERNAL/bl31.bin
make nanopi_neo2_defconfig
make
```
Assuming this repo is located at ~/Repos/npn2-buildroot. Adjust as needed.

## Issues
 * Currently U-Boot does not work with arm-trusted-firmware for the bl31.bin needed for this board. To get around this, this repo hosts a pre-compiled binary that is linked by the BL31 env var which will be picked up by u-boot at compile. Source used was this.

## Todo
 * Move the bl31.bin compile process to a package that then exports the BL31 environment variable.
