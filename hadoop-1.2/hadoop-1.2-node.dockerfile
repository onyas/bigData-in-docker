FROM fineplace/hadoop1.2-base
MAINTAINER fineplace <master@fineplace.cn>

COPY conf/core-site.xml /usr/local/hadoop-1.2.1/conf
COPY conf/hdfs-site.xml /usr/local/hadoop-1.2.1/conf
COPY conf/mapred-site.xml /usr/local/hadoop-1.2.1/conf

RUN echo "master" > /usr/local/hadoop-1.2.1/conf/masters && echo "slave1" > /usr/local/hadoop-1.2.1/conf/slaves && echo "slave2" >> /usr/local/hadoop-1.2.1/conf/slaves
RUN echo "JAVA_HOME=$JAVA_HOME" >> /usr/local/hadoop-1.2.1/conf/hadoop-env.sh

RUN yum -y install telnet \
	&& yum -y install openssh-server \
	&& echo "PermitRootLogin yes" >> /etc/ssh/sshd_config \
	&& yum -y install openssh-clients \
	&& mkdir /root/.ssh \
	&& ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa \
	&& cat /root/.ssh/id_rsa.pub > /root/.ssh/authorized_keys \
	&& chmod 600 /root/.ssh/authorized_keys \
	&& mkdir /usr/local/hadoop-1.2.1/tmp

ENTRYPOINT [ "sh", "-c", "service sshd start;hadoop namenode -format; bash"]
