#!/bin/bash
set -x
echo "Image ENTRYPOINT executing in `pwd` with arguments $*"

sudo chown sc /data /data/log/scapi
#Prepare mounted volumes
sudo mkdir -p /data/log/redis /data/db/redis /data/log/nginx
sudo chown redis:redis /data/log/redis /data/db/redis
sudo chown www-data:www-data /data/log/nginx

#sudo chown -R sc /src/discourse
sudo redis-server /etc/redis/redis.local.conf

#Run command passed as argument (Else CMD gets executed, and persisted on commit)
sh -c "$*"
