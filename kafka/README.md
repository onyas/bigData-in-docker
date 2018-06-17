## Kafka Cluster In Docker

### Supported Kafka Versions
* kafka_2.12-0.10.2.1  and java 8

### Quick Start

If you want to run kafka in cluster,in current folder run:

```
	docker-compose up
```
After that

```
	docker ps 
```
You can find that there 3 containers started which named kafka\-master,kafka\-slave1, kafka\-slave2

Then go inside the Master node,which is kafka\-master

```
	docker exec -it kafka-master /bin/bash
	jps
```

If you want to stop kafka, in current folder run:

```
	docker-compose down
```
