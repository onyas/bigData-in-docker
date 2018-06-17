FROM fineplace/kafka-base
MAINTAINER fineplace <master@fineplace.cn>

COPY kafka-entrypoint.sh /usr/bin/

RUN chmod a+x /usr/bin/kafka-entrypoint.sh 

ENTRYPOINT [ "sh", "-c", "./usr/bin/kafka-entrypoint.sh; bash"]

EXPOSE 2181
EXPOSE 2888
EXPOSE 3888
