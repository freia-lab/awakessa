# This should be a test or example startup script

require awakessa

epicsEnvSet ("IOCNAME", "ioc01-ssa")

iocshLoad("$(awakessa_DIR)ssa.iocsh", "TOP=/opt/epics/autosave,IP_ADDR=192.168.10.45,ASYN_PORT=SSA_PORT")

