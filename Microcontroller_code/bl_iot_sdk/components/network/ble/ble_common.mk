CFLAGS   += -DCFG_FREERTOS
CFLAGS   += -DARCH_RISCV

ifeq ($(CONFIG_CHIP_NAME),BL602)
CFLAGS   += -DBL602
CFLAGS   += -DCONFIG_SET_TX_PWR
endif

ifeq ($(CONFIG_CHIP_NAME),BL702)
CFLAGS   += -DBL702
endif

ifeq ($(CONFIG_DBG_RUN_ON_FPGA), 1)
CFLAGS   += -DCFG_DBG_RUN_ON_FPGA
endif

ifeq ($(CONFIG_BUILD_ROM_CODE),1)
CFLAGS += -DBUILD_ROM_CODE
endif

CFLAGS   += -DCFG_BLE_ENABLE
CPPFLAGS += -DCFG_BLE_ENABLE

CFLAGS   += -DBFLB_BLE
CFLAGS   += -DCFG_BLE
CFLAGS   += -DCFG_SLEEP
CFLAGS   += -DOPTIMIZE_DATA_EVT_FLOW_FROM_CONTROLLER

ifeq ($(CONFIG_BT_TL),1)
CFLAGS += -DCONFIG_BT_TL
CONFIG_BLE_HOST_DISABLE:=1
endif

CONFIG_BT_CONN?=2
CFLAGS += -DCFG_CON=$(CONFIG_BT_CONN)
CONFIG_BLE_TX_BUFF_DATA?=$(CONFIG_BT_CONN)
CFLAGS += -DCFG_BLE_TX_BUFF_DATA=$(CONFIG_BLE_TX_BUFF_DATA)
CONFIG_BT_ALLROLES?=1
CONFIG_BT_CENTRAL?=1
CONFIG_BT_OBSERVER?=1
CONFIG_BT_PERIPHERAL?=1
CONFIG_BT_BROADCASTER?=1
CONFIG_BT_SETTINGS?=0
CONFIG_BT_WIFIPROV_SERVER?=0
CONFIG_BLE_TP_SERVER?=0
CONFIG_BLE_MULTI_ADV?=0
CONFIG_BT_STACK_CLI?=1
CONFIG_BLE_STACK_DBG_PRINT?=1
CONFIG_BT_STACK_PTS?=0
CONFIG_BT_GEN_RANDOM_BY_SW?=0 #If BLE host generate random value by software
CONFIG_DISABLE_BT_SMP ?= 0
CONFIG_DISABLE_BT_HOST_PRIVACY ?= 1
CONFIG_BTSOONP_PRINT?=0
CFG_BLE_PDS?=0
CONFIG_BT_MESH?=0
CONFIG_BT_MESH_MODEL?=0
ifeq ($(CONFIG_BT_MESH),1)
CONFIG_BT_MESH_PB_ADV?=1
CONFIG_BT_MESH_PB_GATT?=1
CONFIG_BT_MESH_FRIEND?=1
CONFIG_BT_MESH_LOW_POWER?=1
CONFIG_BT_MESH_PROXY?=1
CONFIG_BT_MESH_GATT_PROXY?=1
ifeq ($(CONFIG_BT_MESH_MODEL), 1)
CONFIG_BT_MESH_MODEL_GEN_SRV?=1
CONFIG_BT_MESH_MODEL_GEN_CLI?=1
CONFIG_BT_MESH_MODEL_LIGHT_SRV?=1
CONFIG_BT_MESH_MODEL_LIGHT_CLI?=1
else
CONFIG_BT_MESH_MODEL_GEN_SRV?=1
endif
endif

##########################################
############## BLE STACK #################
##########################################

ifeq ($(CONFIG_BT_ALLROLES),1)

CFLAGS += -DCONFIG_BT_ALLROLES
CFLAGS += -DCONFIG_BT_CENTRAL
CFLAGS += -DCONFIG_BT_OBSERVER
CFLAGS += -DCONFIG_BT_PERIPHERAL
CFLAGS += -DCONFIG_BT_BROADCASTER

else

ifeq ($(CONFIG_BT_CENTRAL),1)
CFLAGS += -DCONFIG_BT_CENTRAL
endif
ifeq ($(CONFIG_BT_OBSERVER),1)
CFLAGS += -DCONFIG_BT_OBSERVER
endif
ifeq ($(CONFIG_BT_PERIPHERAL),1)
CFLAGS += -DCONFIG_BT_PERIPHERAL
endif
ifeq ($(CONFIG_BT_BROADCASTER),1)
CFLAGS += -DCONFIG_BT_BROADCASTER
endif

endif

ifneq ($(CONFIG_DBG_RUN_ON_FPGA), 1)
ifeq ($(CONFIG_BT_SETTINGS), 1)
CFLAGS += -DCONFIG_BT_SETTINGS
endif
endif

ifeq ($(CONFIG_BLE_MFG),1)
CFLAGS += -DCONFIG_BLE_MFG
ifeq ($(CONFIG_BLE_MFG_HCI_CMD),1)
CFLAGS   += -DCONFIG_BLE_MFG_HCI_CMD
endif
endif

ifeq ($(CONFIG_BT_GEN_RANDOM_BY_SW),1)
CFLAGS += -DCONFIG_BT_GEN_RANDOM_BY_SW
endif

ifeq ($(CFG_BLE_PDS),1)
CFLAGS += -DCFG_BLE_PDS
endif

CFLAGS   += -DCONFIG_BT_L2CAP_DYNAMIC_CHANNEL \
			-DCONFIG_BT_GATT_CLIENT \
			-DCONFIG_BT_CONN \
 			-DCONFIG_BT_GATT_DIS_PNP \
 			-DCONFIG_BT_GATT_DIS_SERIAL_NUMBER \
 			-DCONFIG_BT_GATT_DIS_FW_REV \
 			-DCONFIG_BT_GATT_DIS_HW_REV \
 			-DCONFIG_BT_GATT_DIS_SW_REV \
 			-DCONFIG_BT_ECC \
 			-DCONFIG_BT_GATT_DYNAMIC_DB \
 			-DCONFIG_BT_GATT_SERVICE_CHANGED \
 			-DCONFIG_BT_KEYS_OVERWRITE_OLDEST \
 			-DCONFIG_BT_KEYS_SAVE_AGING_COUNTER_ON_PAIRING \
 			-DCONFIG_BT_GAP_PERIPHERAL_PREF_PARAMS \
 			-DCONFIG_BT_BONDABLE \
 			-DCONFIG_BT_HCI_VS_EVT_USER \
 			-DCONFIG_BT_ASSERT

ifneq ($(CONFIG_DISABLE_BT_SMP), 1)
CFLAGS += -DCONFIG_BT_SMP \
 			-DCONFIG_BT_SIGNING
endif

ifneq ($(CONFIG_DBG_RUN_ON_FPGA), 1)
CFLAGS += -DCONFIG_BT_SETTINGS_CCC_LAZY_LOADING \
 			-DCONFIG_BT_SETTINGS_USE_PRINTK
endif

ifeq ($(CONFIG_BLE_STACK_DBG_PRINT),1)
CFLAGS += -DCFG_BLE_STACK_DBG_PRINT
endif
ifeq ($(CONFIG_BTSOONP_PRINT),1)
CFLAGS += -DCONFIG_BTSOONP_PRINT
endif
ifeq ($(CONFIG_BT_OAD_SERVER),1)
CFLAGS += -DCONFIG_BT_OAD_SERVER
endif
ifeq ($(CONFIG_BT_OAD_CLIENT),1)
CFLAGS += -DCONFIG_BT_OAD_CLIENT
endif
ifeq ($(CONFIG_BT_REMOTE_CONTROL),1)
CFLAGS += -DCONFIG_BT_REMOTE_CONTROL
endif

ifneq ($(CONFIG_DISABLE_BT_HOST_PRIVACY), 1)
CFLAGS += -DCONFIG_BT_PRIVACY
endif

#ifneq ($(CONFIG_BT_REMOTE_CONTROL),1)
#ifneq ($(CONFIG_BT_MESH),1)
#CFLAGS += -DCONFIG_BT_PRIVACY
#endif
#endif

ifeq ($(CONFIG_BLE_TP_SERVER),1)
CFLAGS += -DCONFIG_BLE_TP_SERVER
endif

ifeq ($(CONFIG_BLE_MULTI_ADV),1)
CFLAGS += -DCONFIG_BLE_MULTI_ADV
endif

ifeq ($(CONFIG_BT_STACK_PTS),1)
CFLAGS += -DCONFIG_BT_STACK_PTS
endif
ifeq ($(PTS_TEST_CASE_INSUFFICIENT_KEY),1)
CFLAGS += -DPTS_TEST_CASE_INSUFFICIENT_KEY
endif
ifeq ($(PTS_GAP_SLAVER_CONFIG_INDICATE_CHARC),1)
CFLAGS += -DPTS_GAP_SLAVER_CONFIG_INDICATE_CHARC
endif

##########################################
############## BLE MESH ##################
##########################################

ifeq ($(CONFIG_BT_MESH),1)

CFLAGS += -DCONFIG_BT_MESH
CFLAGS += -DCONFIG_BT_MESH_PROV
CFLAGS += -DCONFIG_BT_MESH_RELAY
#CFLAGS += -DCONFIG_BT_SETTINGS
ifeq ($(CONFIG_BT_MESH_PB_ADV),1)
CFLAGS += -DCONFIG_BT_MESH_PB_ADV
endif
ifeq ($(CONFIG_BT_MESH_PB_GATT),1)
CFLAGS += -DCONFIG_BT_MESH_PB_GATT
endif
ifeq ($(CONFIG_BT_MESH_FRIEND),1)
CFLAGS += -DCONFIG_BT_MESH_FRIEND
endif
ifeq ($(CONFIG_BT_MESH_LOW_POWER),1)
CFLAGS += -DCONFIG_BT_MESH_LOW_POWER
endif
ifeq ($(CONFIG_BT_MESH_PROXY),1)
CFLAGS += -DCONFIG_BT_MESH_PROXY
endif
ifeq ($(CONFIG_BT_MESH_GATT_PROXY),1)
CFLAGS += -DCONFIG_BT_MESH_GATT_PROXY
endif
ifeq ($(CONFIG_BLE_STACK_DBG_PRINT),1)
CFLAGS += -DCFG_BLE_STACK_DBG_PRINT
endif
ifeq ($(CONFIG_BT_MESH_MODEL),1)
CFLAGS += -DCONFIG_BT_MESH_MODEL
ifeq ($(CONFIG_BT_MESH_MODEL_GEN_SRV),1)
CFLAGS += -DCONFIG_BT_MESH_MODEL_GEN_SRV
endif
ifeq ($(CONFIG_BT_MESH_MODEL_GEN_CLI),1)
CFLAGS += -DCONFIG_BT_MESH_MODEL_GEN_CLI
endif
ifeq ($(CONFIG_BT_MESH_MODEL_LIGHT_SRV),1)
CFLAGS += -DCONFIG_BT_MESH_MODEL_LIGHT_SRV
endif
ifeq ($(CONFIG_BT_MESH_MODEL_LIGHT_CLI),1)
CFLAGS += -DCONFIG_BT_MESH_MODEL_LIGHT_CLI
endif
else
ifeq ($(CONFIG_BT_MESH_MODEL_GEN_SRV),1)
CFLAGS += -DCONFIG_BT_MESH_MODEL_GEN_SRV
endif
endif

endif

CFLAGS   += -Wno-unused-const-variable  \
            -Wno-unused-but-set-variable \
            -Wno-format