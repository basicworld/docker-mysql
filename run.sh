#!/bin/bash
docker run -itd \
--hostname=mysql \
--privileged \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
-v $(pwd)/data/var/lib/mysql:/var/lib/mysql \
-v $(pwd)/data/var/log:/var/log \
-p 3306:3306 \
-e "container=docker" \
nifa/mysql

#docker exec -it $(docker ps -l -q) /bin/sh /root/restart-mysql.sh
docker exec -it $(docker ps -l -q) /bin/sh /root/status-mysql.sh
