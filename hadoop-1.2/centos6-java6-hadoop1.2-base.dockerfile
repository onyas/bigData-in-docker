FROM centos:6.6
MAINTAINER fineplace <master@fineplace.cn>

COPY jdk-6u45-linux-x64.bin /usr/local/
ADD hadoop-1.2.1-bin.tar.gz /usr/local/
RUN cd /usr/local/ \
	&& chmod a+x jdk-6u45-linux-x64.bin && ./jdk-6u45-linux-x64.bin

ENV JAVA_HOME /usr/local/jdk1.6.0_45
ENV PATH $JAVA_HOME/bin:$PATH

ENV HADOOP_HOME /usr/local/hadoop-1.2.1
ENV PATH $HADOOP_HOME/bin:$PATH