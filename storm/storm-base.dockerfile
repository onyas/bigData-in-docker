FROM fineplace/zookeeper-base
MAINTAINER fineplace <master@fineplace.cn>

ENV STORM_VERSION 1.2.1
ADD apache-storm-1.2.1.tar.gz /usr/local

COPY conf/storm.yaml /usr/local/apache-storm-$STORM_VERSION/conf

ENV STORM_HOME=/usr/local/apache-storm-$STORM_VERSION
ENV PATH $STORM_HOME/bin:$PATH
