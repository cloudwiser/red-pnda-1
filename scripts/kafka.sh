#!/bin/bash

# kafka 0.10.2.0
wget http://mirrors.gigenet.com/apache/kafka/0.10.2.0/kafka_2.11-0.10.2.0.tgz
tar xzf kafka_2.11-0.10.2.0.tgz -C /usr/local/
cd /usr/local/kafka_2.11-0.10.2.0

# kafka will use  the standalone zookeeper instead of creating it's own
# start kafka server

cp $1/files/kafka.conf /etc/init/

# start kafka
sudo service kafka start