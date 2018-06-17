## Storm Cluster In Docker

### Supported Storm Versions
* 1.2.1 with java 8

### Quick Start

If you want to run storm in cluster,in current folder run:

```
	docker-compose up
```
After that

```
	docker ps 
```
You can find that there 3 containers started which named storm\-master,
storm\-slave1, storm\-slave2

Then go inside the master node, and check storm status

```
	docker exec -it storm-master /bin/bash
	jps
```


if QuorumPeerMain,nimbus,logviewer show, that means our storm cluster aready set up.Then open [http://172.16.0.110:8080/index.html](http://172.16.0.110:8080/index.html), you can check whether the nimbus and supervisor are right.

If you want to stop storm, in current folder run:

```
	docker-compose down
```



