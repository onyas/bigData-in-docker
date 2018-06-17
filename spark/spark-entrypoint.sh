#!/bin/bash
function main(){
	service sshd restart
	cd /usr/local/hadoop-2.8.3/sbin
	./start-all.sh

	sleep 10

	cd /usr/local/spark-2.0.2-bin-hadoop2.7/sbin
	./start-all.sh
}

main
