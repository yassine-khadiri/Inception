#!/bin/sh

export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java"

echo $JAVA_HOME >> /etc/environment

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -

echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list

apt-get install elasticsearch

sed -i 's/#network.host:/network.host: localhost/' /etc/elasticsearch/elasticsearch.yml

service start elasticsearch

service enable elasticsearch

