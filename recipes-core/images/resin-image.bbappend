#
# Avenger96
#

IMAGE_FSTYPES_append_stm32mp1-av96 = " resinos-img"

RESIN_BOOT_PARTITION_FILES_stm32mp1-av96 = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    stm32mp157a-dhcor-avenger96.dtb:/stm32mp157a-dhcor-avenger96.dtb \
    u-boot.bin:/u-boot.bin \
    uImage-initramfs-stm32mp1-av96.bin:/uImage \
    "

IMAGE_CMD_resinos-img_append_stm32mp1-av96 () {
}
