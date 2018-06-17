## Spark Cluster In Docker

### Supported Spark Versions
* 2.0.2 with java 8

### Quick Start

If you want to run spark in cluster,in current folder run:

```
	docker-compose up
```
After that

```
	docker ps 
```
You can find that there 3 containers started which named spark\-master,
spark\-slave1, spark\-slave2

Then go inside the NameNode,which is spark\-master, and check the process

```
	docker exec -it spark-master /bin/bash
	jps
```

Then open [http://172.16.0.110:8080/cluster](http://172.16.0.110:8080/cluster), you can check the status.

If you want to stop spark, in current folder run:

```
	docker-compose down
```


