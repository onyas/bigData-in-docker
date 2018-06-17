#!/bin/bash
startMaster(){
	cd /usr/local/hadoop-2.8.3/sbin
	./start-all.sh
	sleep 10
	${HBASE_HOME}/bin/start-hbase.sh
}

function main(){
	service sshd restart
	echo "${ZK_ID}" >${ZOOKEEPER_HOME}/data/myid

	sleep 5

	hdfs namenode -format

	if [ ${ROLE} == "master" ]
	then
		startMaster
	fi
}

main

