FROM fineplace/storm-base
MAINTAINER fineplace <master@fineplace.cn>

ADD spark-2.0.2-bin-hadoop2.7.tgz   /usr/local
ADD scala-2.12.4.tgz 	/usr/local

RUN 	cd /usr/local	\
	&& rm -rf spark-2.0.2-bin-hadoop2.7.tgz	\
	&& rm -rf scala-2.12.4.tgz \
	&& cd spark-2.0.2-bin-hadoop2.7	\
	&& echo "slave1" >> conf/slaves	\
	&& echo "slave2" >> conf/slaves	\
	&& echo "export SCALA_HOME=/usr/local/scala-2.12.4" >> conf/spark-env.sh	\
	&& echo "export JAVA_HOME=$JAVA_HOME" >> conf/spark-env.sh	\
	&& echo "export HADOOP_HOME=$HADOOP_HOME" >> conf/spark-env.sh	\
	&& echo "export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop" >> conf/spark-env.sh	\
	&& echo "SPARK_MASTER_IP=master" >> conf/spark-env.sh	\
	&& echo "SPARK_LOCAL_DIRS=/usr/local/spark-2.0.2-bin-hadoop2.7" >> conf/spark-env.sh	\
	&& echo "SPARK_DRIVER_MEMORY=1G" >> conf/spark-env.sh	
