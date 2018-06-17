## Zookeeper Cluster In Docker

### Supported Zookeeper Versions
* 3.4.10 with java 8

### Quick Start

If you want to run zookeeper in cluster,in current folder run:

```
	docker-compose up
```
After that

```
	docker ps 
```
You can find that there 3 containers started which named zk\-master,
zk\-slave1, zk\-slave2

Then go inside the each of the node, and check zk status

```
	docker exec -it zk-master /bin/bash
	jps
```

if QuorumPeerMain shows, that means our zk cluster aready set up.

If you want to stop zookeeper, in current folder run:

```
	docker-compose down
```

