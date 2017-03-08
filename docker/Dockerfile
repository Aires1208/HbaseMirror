FROM 10.62.100.88:9999/bashell/alpine-bash:latest

MAINTAINER "qianguodong" <qian.guodong5@zte.com.cn>

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk

ADD java-1.8-openjdk.tar.gz /usr/lib/jvm

RUN ln -sv /usr/lib/jvm/java-1.8-openjdk  /usr/lib/jvm/default-jvm

RUN ln -sv /usr/lib/jvm/default-jvm/jre/bin/java /usr/bin/java

ARG HBASE_VERSION=1.0.3

ENV PATH $PATH:/hbase/bin

WORKDIR /

ADD hbase-${HBASE_VERSION}-bin.tar.gz .

RUN ln -sv hbase-${HBASE_VERSION} hbase

COPY hbase-site.xml /hbase/conf

COPY entrypoint.sh  /

RUN chmod 755 entrypoint.sh

EXPOSE 2181 16010

CMD ["/entrypoint.sh"]
