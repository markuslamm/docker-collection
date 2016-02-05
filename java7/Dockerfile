FROM twentyfourseven/base

MAINTAINER markus.lamm@googlemail.com

RUN \
    echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get update && \
    apt-get install -y oracle-java7-installer && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk7-installer && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/*

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle/

CMD ["bash"]