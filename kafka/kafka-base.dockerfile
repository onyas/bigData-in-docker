FROM fineplace/hbase-base
MAINTAINER fineplace <master@fineplace.cn>

ADD kafka_2.12-0.10.2.1.tgz /usr/local

RUN 	cd /usr/local	\
	&& rm -rf kafka_2.12-0.10.2.1.tgz	\
	&& cd kafka_2.12-0.10.2.1	\
	&& mkdir -p /tmp/kafka-logs	

COPY conf/server.properties /usr/local/kafka_2.11-0.10.2.1/config

ENV KAFKA_HOME=/usr/local/kafka_2.11-0.10.2.1
ENV PATH $KAFKA_HOME/bin:$PATH
