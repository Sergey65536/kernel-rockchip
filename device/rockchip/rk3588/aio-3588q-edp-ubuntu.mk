CMD=`realpath $BASH_SOURCE`
CUR_DIR=`dirname $CMD`

source $CUR_DIR/aio-3588q-ubuntu.mk

# Kernel dts
export RK_KERNEL_DTS=rk3588-firefly-aio-3588q-edp_NV156FHM-T06
