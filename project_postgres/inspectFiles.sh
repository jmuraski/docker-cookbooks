#!/bin/sh


echo "/ncreating disk mount to zeoServerDb\nCritcal Paths are"
echo "/etc/postgresql"
echo "/var/lib/postgresql"
echo "/var/log/postgresql"

docker run -rm --volumes-from zeoServerDb -t -i busybox sh