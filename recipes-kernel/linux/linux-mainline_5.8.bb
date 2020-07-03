LICENSE = "GPLv2"
DESCRIPTION = "Mainline Stable Linux kernel"
SECTION = "kernel"

require linux-mainline.inc

LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"



KERNEL_SRC = "git://github.com/torvalds/linux.git;protocol=git"
SRCBRANCH = "master"
SRCREV = "b3a9e3b9622ae10064826dccb4f7a52bd88c7407"



