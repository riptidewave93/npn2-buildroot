#!/bin/sh
# post-image.sh for Nanopi NEO2

BOARD_DIR="$( dirname "${0}" )"
GENIMAGE_CFG="${BOARD_DIR}/genimage.cfg"
GENIMAGE_TMP="${BUILD_DIR}/genimage.tmp"

rm -rf "${GENIMAGE_TMP}"

# Configure bootloader image
fallocate -l 32k "${BINARIES_DIR}/u-boot-final.img"
dd if="${BINARIES_DIR}/sunxi-spl.bin" of="${BINARIES_DIR}/u-boot-final.img" bs=8k || exit 1
dd if="${BINARIES_DIR}/u-boot.itb" of="${BINARIES_DIR}/u-boot-final.img" bs=8k seek=4 || exit 1

# Generate SDCard Image
genimage                         \
	--rootpath "${TARGET_DIR}"     \
	--tmppath "${GENIMAGE_TMP}"    \
	--inputpath "${BINARIES_DIR}"  \
	--outputpath "${BINARIES_DIR}" \
	--config "${GENIMAGE_CFG}"
