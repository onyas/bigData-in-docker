## Hadoop Cluster In Docker

### Supported Hadoop Versions
* 1.2 with java 6

### Quick Start

If you want to run hadoop in cluster,in current folder run:

```
	docker-compose up
```
After that

```
	docker ps 
```
You can find that there 3 containers started which named hadoop12\_master\_1,
hadoop12\_slave1\_1, hadoop12\_slave2\_1

Then go inside the NameNode,which is hadoop12\_master\_1, to start the cluster

```
	docker exec -it hadoop12_master_1 /bin/bash
	./usr/local/hadoop-1.2.1/bin/start-all.sh
```

Then open [http://172.16.0.110:50070/dfshealth.jsp](http://172.16.0.110:50070/dfshealth.jsps), you can check if the LiveNode is 2.

If you want to stop hadoop, in current folder run:

```
	docker-compose down
```

If you encounter any problem, you can refer this document for help
[http://www.michael-noll.com/tutorials/running-hadoop-on-ubuntu-linux-multi-node-cluster/#java-io-ioexception-incompatible-namespaceids](http://www.michael-noll.com/tutorials/running-hadoop-on-ubuntu-linux-multi-node-cluster/#java-io-ioexception-incompatible-namespaceids)

If you want to bulid images by youself, you can download the resource throught [https://pan.baidu.com/s/18rLlnBh_AmZmeJjY4ecWAQ](https://pan.baidu.com/s/18rLlnBh_AmZmeJjY4ecWAQ)
