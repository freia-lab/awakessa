# This should be a test or example startup script

require awakessa
require recsync

epicsEnvSet ("IOCNAME", "ioc50-ssa")

iocshLoad("$(awakessa_DIR)ssa.iocsh", "TOP=/opt/epics/autosave,IP_ADDR=192.168.10.47,ASYN_PORT=SSA_PORT")
#iocshLoad("$(awakessa_DIR)ssa.iocsh", "TOP=/opt/epics/autosave,IP_ADDR=192.168.1.234,ASYN_PORT=SSA_PORT")

iocshLoad("$(recsync_DIR)/recsync.iocsh", "IOCNAME=$(IOCNAME)")
