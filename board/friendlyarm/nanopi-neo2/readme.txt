Intro
=====

The instructions herein are valid for the FriendlyARM NanoPi NEO2.

The FriendlyARM Nanopi NEO2 is a 4x4cm² board with an Allwiner H5 SoC:
  - ARM Cortex-A53 Quad-Core @ 1GHz~
  - 512MiB of DDR3
  - uSDCard as only storage option
  - 3x USB 2.0 host (one socket, two on expansion pin-holes)
  - 1x USB 2.0 OTG (also used as power source)
  - 10/100/1000 ethernet MAC
  - GPIOs, SPI, I2c...

Support for the Nanopi NEO2 in U-Boot and Linux is very recent, so only
core, basic features are available.

How to build
============

    $ make nanopi_neo2_defconfig
    $ make

Note: you will need access to the internet to download the required
sources.

You will then obtain an image ready to be written to your micro SDcard:

    $ dd if=output/images/sdcard.img of=/dev/sdX bs=1M

Notes:
  - replace 'sdX' with the actual device with your micro SDcard,
  - you may need to be root to do that (use 'sudo').

Insert the micro SDcard in your NanoPi NEO2 and power it up. The console
is on the serial line, 115200 8N1.
