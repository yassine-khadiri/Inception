#!/bin/bash

sed -i 's/# bind 127.0.0.1/bind 0.0.0.0/g' /etc/redis/redis.conf

sed -i 's/# maxmemory <bytes>/maxmemory 128M/g' /etc/redis/redis.conf

sed -i 's/# maxmemory-policy noeviction/maxmemory-policy allkeys-lfu/g' /etc/redis/redis.conf
