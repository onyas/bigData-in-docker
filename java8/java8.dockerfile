FROM centos:6.6
MAINTAINER fineplace <master@fineplace.cn>

COPY jdk-8u131-linux-x64.rpm /usr/local

# Java install
RUN cd /usr/local	\
	&& rpm -i jdk-8u131-linux-x64.rpm	\
	&& rm -rf jdk-8u131-linux-x64.rpm	

ENV JAVA_HOME=/usr/java/jdk1.8.0_131
ENV PATH $JAVA_HOME/bin:$PATH


