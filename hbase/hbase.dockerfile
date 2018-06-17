FROM fineplace/hbase-base
MAINTAINER fineplace <master@fineplace.cn>

COPY hbase-entrypoint.sh /usr/bin/

RUN chmod a+x /usr/bin/hbase-entrypoint.sh 

ENTRYPOINT [ "sh", "-c", "./usr/bin/hbase-entrypoint.sh; bash"]
