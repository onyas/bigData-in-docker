## Hadoop Cluster In Docker

### Supported Hadoop Versions
* 2.8.3 with java 8

### Quick Start

If you want to run hadoop in cluster,in current folder run:

```
	docker-compose up
```

Initial start-up will take a little time, because it needs to download the images related.

After that

```
	docker ps 
```
You can find that there 3 containers started which named hadoop\-master,
hadoop\-slave1, hadoop\-slave2

Then go inside the NameNode,which is hadoop\-master, and check the process

```
	docker exec -it hadoop-master /bin/bash
	jps
```

Then open [http://172.16.0.110:8088/cluster](http://172.16.0.110:8088/cluster){:target="_blank"}, you can check whether the LiveNode is 3. If you are using Mac or Windows, during unsupport from docker, you can't access this link directly for now ([https://docs.docker.com/network/network-tutorial-standalone/](https://docs.docker.com/network/network-tutorial-standalone/){:target="_blank"}), but you can access the link throught other methods, in my case I'm using [https://github.com/wojas/docker-mac-network](https://github.com/wojas/docker-mac-network){:target="_blank"}

If you want to stop hadoop, in current folder run:

```
	docker-compose down
```


If you encounter any problem, you can refer this document for help
[http://www.michael-noll.com/tutorials/running-hadoop-on-ubuntu-linux-multi-node-cluster/#java-io-ioexception-incompatible-namespaceids](http://www.michael-noll.com/tutorials/running-hadoop-on-ubuntu-linux-multi-node-cluster/#java-io-ioexception-incompatible-namespaceids){:target="_blank"}
