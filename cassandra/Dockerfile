FROM twentyfourseven/java7

MAINTAINER markus.lamm@googlemail.com

RUN \
    apt-get update; \
    apt-get install -y -qq python-dev python-setuptools; \
    easy_install pip; \

    mkdir /opt/cassandra; \
    wget -O - http://www.us.apache.org/dist/cassandra/2.2.4/apache-cassandra-2.2.4-bin.tar.gz \
    | tar xzf - --strip-components=1 -C "/opt/cassandra";

RUN \
    mkdir /opt/agent; \
    wget -O - http://downloads.datastax.com/community/datastax-agent-5.2.4.tar.gz \
    | tar xzf - --strip-components=1 -C "/opt/agent";

ADD	. /src

RUN	\
	cp /src/cassandra.yaml /opt/cassandra/conf/; \
    mkdir -p /etc/service/cassandra; \
    cp /src/cassandra-run /etc/service/cassandra/run; \
    mkdir -p /etc/service/agent; \
    cp /src/agent-run /etc/service/agent/run

EXPOSE 7199 7000 7001 9160 9042

WORKDIR /opt/cassandra

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/sbin/my_init"]
