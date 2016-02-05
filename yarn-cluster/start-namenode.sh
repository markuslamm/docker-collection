#!/bin/sh

docker run -p 50070:50070 -p 50075:50075 -p 8088:8088 --name namenode -h namenode --workdir /usr/local/hadoop twentyfourseven/yarn-cluster /etc/bootstrap.sh -d -namenode
