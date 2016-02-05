#!/bin/sh

docker run --link namenode:namenode --workdir /usr/local/hadoop twentyfourseven/yarn-cluster /etc/bootstrap.sh -d -datanode
