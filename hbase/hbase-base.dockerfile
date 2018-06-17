FROM fineplace/storm-base
MAINTAINER fineplace <master@fineplace.cn>

ADD hbase-1.2.6-bin.tar.gz /usr/local

RUN 	cd /usr/local	\
	&& rm -rf hbase-1.2.6-bin.tar.gz	\
	&& cd hbase-1.2.6	\
	&& mkdir zookeeper	\
	&& mkdir /var/hbase	\
	&& echo "master" >> conf/regionservers	\
	&& echo "slave1" >> conf/regionservers	\
	&& echo "slave2" >> conf/regionservers	\
	&& echo "export JAVA_HOME=$JAVA_HOME" >> conf/hbase-env.sh	\
	&& echo "export CLASSPATH=.:$CLASSPATH:$JAVA_HOME/lib" >> conf/hbase-env.sh 

COPY conf/hbase-site.xml /usr/local/hbase-1.2.6/conf

ENV HBASE_HOME=/usr/local/hbase-1.2.6
ENV HBASE_CLASSPATH=$HBASE_HOME/conf
ENV HBASE_LOG_DIR=$HBASE_HOME/logs
ENV PATH $HBASE_HOME/bin:$PATH
