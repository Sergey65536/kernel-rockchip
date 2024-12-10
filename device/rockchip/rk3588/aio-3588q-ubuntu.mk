CMD=`realpath $BASH_SOURCE`
CUR_DIR=`dirname $CMD`

source $CUR_DIR/aio-3588q-buildroot.mk

# Set rootfs type, including ext2 ext4 squashfs
export RK_ROOTFS_TYPE=ext4
# rootfs image path
export RK_ROOTFS_IMG=ubuntu_rootfs/rootfs.img

# Buildroot config
export RK_CFG_BUILDROOT=

#OEM config
export RK_OEM_DIR=

#userdata config
export RK_USERDATA_DIR=

# rootfs_system
export RK_ROOTFS_SYSTEM=ubuntu

# packagefile for make update image
export RK_PACKAGE_FILE=rk3588-ubuntu-package-file
