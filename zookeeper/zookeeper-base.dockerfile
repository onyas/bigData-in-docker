FROM fineplace/hadoop2.x-base
MAINTAINER fineplace <master@fineplace.cn>

ADD zookeeper-3.4.10.tar.gz /usr/local

RUN cd /usr/local \
	&& cd zookeeper-3.4.10	\
	&& mkdir data	\
	&& mkdir log	

COPY conf/zoo.cfg /usr/local/zookeeper-3.4.10/conf


ENV ZOOKEEPER_HOME=/usr/local/zookeeper-3.4.10
ENV PATH $ZOOKEEPER_HOME/bin:$PATH

