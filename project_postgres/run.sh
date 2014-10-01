#!/bin/sh


echo "\nStarting zeoServerDb docker instance\nType following command to connnect to db"
echo "psql -h localhost -p 49155 -d zeo_db_local -U zeo --password\n\n"

docker run -d -p 49155:5432 -P --name zeoServerDb zeo_server/postgresql