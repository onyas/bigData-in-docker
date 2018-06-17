FROM fineplace/storm-base
MAINTAINER fineplace <master@fineplace.cn>

COPY storm-entrypoint.sh /usr/bin/
RUN chmod a+x /usr/bin/storm-entrypoint.sh

CMD ["/usr/bin/storm-entrypoint.sh"]