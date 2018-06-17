#!/bin/bash
STORMFILE="/usr/local/apache-storm-1.2.1/bin/storm"
startMaster(){
	./$STORMFILE nimbus &
	./$STORMFILE ui &
	./$STORMFILE logviewer &
}

startSlave(){
	./$STORMFILE supervisor &
	./$STORMFILE logviewer &
}

echo "${ZK_ID}" >${ZOOKEEPER_HOME}/data/myid

if [ ${ROLE} == "master" ]
then
	startMaster
elif [ ${ROLE} == "slave" ]
then
	startSlave
fi
	${ZOOKEEPER_HOME}/bin/zkServer.sh start-foreground
