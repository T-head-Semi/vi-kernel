#VERSION_CFG := ISP8000NANO_V1802
#KERNEL :=/opt/vsi_isp_kernel_tree/4.8.0-41-generic-x86/build
#KERNEL :=/lib/modules/$(shell uname -r)/build
KERNEL :=$(LINUX_DIR)
KERNEL_SRC :=$(KERNEL)

EXTRA_CFLAGS += -DWITH_VVCAM
EXTRA_CFLAGS += -DWITH_VVCAM_DUAL

EXTRA_CFLAGS += -DVVCSI0_BASE=0xDE200000
EXTRA_CFLAGS += -DVVCSI1_BASE=0xDE300000
EXTRA_CFLAGS += -DVVCSI_SIZE=0x00200000

EXTRA_CFLAGS += -DVVCAM_I2C0_BASE=0xDE3080f0
EXTRA_CFLAGS += -DVVCAM_I2C1_BASE=0xDE3080f4
EXTRA_CFLAGS += -DVVCAM_I2C_SIZE=0x00000004

EXTRA_CFLAGS += -DVVSENSOR_I2C_BUS0=8
EXTRA_CFLAGS += -DVVSENSOR_I2C_BUS1=9


ifeq ($(VERSION_CFG), ISP8000_V2009)
EXTRA_CFLAGS += -DVVISP0_BASE=0xDE600000
EXTRA_CFLAGS += -DVVISP1_BASE=0xDE700000  
else
EXTRA_CFLAGS += -DVVISP0_BASE=0xFFE4100000
EXTRA_CFLAGS += -DVVISP1_BASE=0xFFE4110000
endif
EXTRA_CFLAGS += -DISP_REG_SIZE=0x00010000

EXTRA_CFLAGS += -DDWE_REG_BASE=0xFFE4130C00
EXTRA_CFLAGS += -DDWE_REG_SIZE=0x00010000
#EXTRA_CFLAGS += -DDWE_REG_RESET=0xffe4130000
EXTRA_CFLAGS += -DVSE_REG_BASE=0xFFE4130000
EXTRA_CFLAGS += -DVSE_REG_SIZE=0x00010000
#EXTRA_CFLAGS += -DVSE_REG_RESET=0xffe4130000

EXTRA_CFLAGS += -DRESERVED_ISP0_MEM_BASE=0xA0000000
EXTRA_CFLAGS += -DRESERVED_ISP0_MEM_SIZE=0x1000000

EXTRA_CFLAGS += -DRESERVED_ISP1_MEM_BASE=0xB0000000
EXTRA_CFLAGS += -DRESERVED_ISP1_MEM_SIZE=0x1000000

EXTRA_CFLAGS += -DVVCTRL_BASE=0xFFE4040000
EXTRA_CFLAGS += -DVVCTRL_SIZE=0x00001000

EXTRA_CFLAGS += -DISP_HW_NUMBER=1
EXTRA_CFLAGS += -DUSE_FPGA
EXTRA_CFLAGS += -D$(VERSION_CFG)

#SENSR0_TYPE := ov2775
#SENSR1_TYPE := ov2775

#SENSR0_TYPE := imx334
#SENSR1_TYPE := imx334

SENSR0_TYPE := ov5693
SENSR1_TYPE := ov5693

#SENSR0_TYPE := imx290
#SENSR1_TYPE := imx290

PLATFORM    := gen6

FLASH_LED_TYPE1 := aw36515
FLASH_LED_TYPE2 := aw36413
