#!/bin/bash

startMaster(){
	cd /usr/local/hadoop-2.8.3/sbin
	./start-all.sh
}

main(){
	service sshd restart
	sleep 5

	hdfs namenode -format

	if [ ${ROLE} == "master" ]
	then
		startMaster
	fi
}

main