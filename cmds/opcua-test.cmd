# This should be a test or example startup script

require awakessa
require opcua
require recsync

epicsEnvSet ("IOCNAME", "ioc50-ssa")


#opcuaSession TEST opc.tcp://192.168.10.45:4840
#opcuaOptions TEST nodes-max=1000:sec-mode=None
#opcuaSubscription FAST TEST 100
#opcuaSubscription SLOW TEST 1000

iocshLoad($(opcua_DIR)opcua.iocsh, "SESS=SSA-TEST, SUBS=SSA1, INET=192.168.10.47, PORT=4840, P=xxx-, SUBSTIME=1000")

dbLoadRecords $(awakessa_DB)ssa-opcua.db

