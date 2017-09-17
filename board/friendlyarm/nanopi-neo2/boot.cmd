fatload mmc 0 ${kernel_addr_r} Image
fatload mmc 0 ${fdt_addr_r} sun50i-h5-nanopi-neo2.dtb
fdt addr ${fdt_addr_r} ${filesize}
fdt resize 0x1000

fdt set ethernet0 local-mac-address ${ethaddr}
fdt set / serial-number ${serial#}

# Set cmdline
setenv bootargs root=/dev/mmcblk0p2 rootwait console=ttyS0,115200 earlyprintk

# Boot
booti ${kernel_addr_r} - ${fdt_addr_r}
