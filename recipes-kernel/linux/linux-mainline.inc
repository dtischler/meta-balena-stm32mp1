SECTION = "kernel"
LICENSE = "GPLv2"
SRC_URI[md5sum] = "0d123df93143c67740c8dfeadc2f048d"
SRC_URI[sha256sum] = "cc75371d1193f656bf02b7180908bbba8c0272c8316c1a90f81fbc97b77867bd"

inherit kernel

require linux.inc

# Since we're not using git, this doesn't make a difference, but we need to fill
# in something or kernel-yocto.bbclass will fail.
KBRANCH ?= "master"

DEPENDS += "rsync-native"

# Pull in the devicetree files into the rootfs
RDEPENDS_${KERNEL_PACKAGE_NAME}-base += "kernel-devicetree"

KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"

S = "${WORKDIR}/linux-${PV}-rc1"

SRC_URI = "https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/snapshot/linux-5.8-rc1.tar.gz \
"

FILES_${KERNEL_PACKAGE_NAME}-base_append = " ${nonarch_base_libdir}/modules/${KERNEL_VERSION}/modules.builtin.modinfo"



