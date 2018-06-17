FROM fineplace/zookeeper-base
MAINTAINER fineplace <master@fineplace.cn>

COPY zookeeper-entrypoint.sh /usr/bin/
RUN chmod a+x /usr/bin/zookeeper-entrypoint.sh

CMD ["/usr/bin/zookeeper-entrypoint.sh"]

EXPOSE 2181
EXPOSE 2888
EXPOSE 3888
