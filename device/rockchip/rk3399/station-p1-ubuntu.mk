#!/bin/bash

CMD=`realpath $BASH_SOURCE`
CUR_DIR=`dirname $CMD`

source $CUR_DIR/firefly-rk3399-ubuntu.mk

# Kernel defconfig
export RK_KERNEL_DEFCONFIG=station_linux_defconfig
export RK_KERNEL_DEFCONFIG_FRAGMENT=rk_auto_delayline.config

# Kernel dts
export RK_KERNEL_DTS=rk3399-roc-pc-plus

# Set extboot
export FF_EXTBOOT=false

# FIREFLY PRODUCT MODEL
FIREFLY_PRODUCT_MODEL=STATION_P1

# PRODUCT MODEL
export RK_PRODUCT_MODEL=ROC_3399_PC_PLUS

# Add firmware information to misc.img
export RK_MISC_WR=true
