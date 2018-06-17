FROM fineplace/spark-base
MAINTAINER fineplace <master@fineplace.cn>

COPY spark-entrypoint.sh /usr/bin/

RUN chmod a+x /usr/bin/spark-entrypoint.sh 

ENTRYPOINT [ "sh", "-c", "./usr/bin/spark-entrypoint.sh; bash"]
