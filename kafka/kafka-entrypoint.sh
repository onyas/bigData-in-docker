#!/bin/bash
startKafka(){
	${ZOOKEEPER_HOME}/bin/zkServer.sh start
	
	sleep 5

	/usr/local/kafka_2.12-0.10.2.1/bin/kafka-server-start.sh /usr/local/kafka_2.12-0.10.2.1/config/server.properties
}

function main(){
	service sshd restart

	# zk config
	echo "${ZK_ID}" >${ZOOKEEPER_HOME}/data/myid

	# kafka config
	echo "zookeeper.connect=master:2181,slave1:2181,slave2:2181" >> /usr/local/kafka_2.12-0.10.2.1/config/server.properties
	echo "broker.id=${BrokerId}" >> /usr/local/kafka_2.12-0.10.2.1/config/server.properties
	

	startKafka
}

main
