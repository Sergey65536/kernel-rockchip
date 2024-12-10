COMMON_ALGORITHM_SITE = $(TOPDIR)/../external/common_algorithm
COMMON_ALGORITHM_SITE_METHOD = local

COMMON_ALGORITHM_INSTALL_STAGING = YES

ifneq ($(BR2_PACKAGE_RV1126_RV1109)$(BR2_PACKAGE_RK3506)$(BR2_PACKAGE_RK3308),)
COMMON_ALGORITHM_CONF_OPTS += -DRV1126_RV1109=TRUE
endif

ifeq ($(BR2_PACKAGE_RK3588),y)
COMMON_ALGORITHM_CONF_OPTS += -DRK3588=TRUE
endif

ifeq ($(BR2_PACKAGE_COMMON_ALGORITHM_32),y)
COMMON_ALGORITHM_CONF_OPTS += -DUSE_32BIT=TRUE
endif

ifeq ($(BR2_PACKAGE_COMMON_ALGORITHM_64),y)
COMMON_ALGORITHM_CONF_OPTS += -DUSE_64BIT=TRUE
endif

ifeq ($(BR2_PACKAGE_COMMON_ALGORITHM_AEC_ANR_AGC),y)
COMMON_ALGORITHM_CONF_OPTS += -DAEC_ANR_AGC_ENABLE=TRUE
endif

ifeq ($(BR2_PACKAGE_COMMON_ALGORITHM_ANR),y)
COMMON_ALGORITHM_CONF_OPTS += -DANR_ENABLE=TRUE
endif

ifeq ($(BR2_PACKAGE_COMMON_ALGORITHM_RKAPPLUS),y)
COMMON_ALGORITHM_CONF_OPTS += -DRKAPPLUS_ENABLE=TRUE
endif

ifeq ($(BR2_PACKAGE_COMMON_ALGORITHM_TWO_MIC_BEAMFORM),y)
COMMON_ALGORITHM_CONF_OPTS += -DTWO_MIC_BEAMFORM_ENABLE=TRUE
endif


ifeq ($(BR2_PACKAGE_COMMON_ALGORITHM_MOVE_DETECT),y)
COMMON_ALGORITHM_CONF_OPTS += -DMOVE_DETECT_ENABLE=TRUE
endif

ifeq ($(BR2_PACKAGE_COMMON_ALGORITHM_OCCLUSION_DETECT),y)
COMMON_ALGORITHM_CONF_OPTS += -DOCCLUSION_DETECT_ENABLE=TRUE
endif

ifeq ($(BR2_PACKAGE_COMMON_ALGORITHM_ROCKAA),y)
COMMON_ALGORITHM_CONF_OPTS += -DROCKAA_ENABLE=TRUE
endif

$(eval $(cmake-package))