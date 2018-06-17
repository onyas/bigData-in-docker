FROM fineplace/hadoop1.2-node
MAINTAINER fineplace <master@fineplace.cn>

ADD run.sh /run.sh
RUN chmod a+x /run.sh
ENTRYPOINT [ "sh", "-c", "./run.sh; bash"]