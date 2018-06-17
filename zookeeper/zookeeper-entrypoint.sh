#!/bin/bash
echo "${ZK_ID}" >${ZOOKEEPER_HOME}/data/myid
${ZOOKEEPER_HOME}/bin/zkServer.sh start-foreground
