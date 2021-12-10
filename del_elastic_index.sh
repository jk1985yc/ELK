#!/bin/bash

IP=127.0.0.1
PORT=9200

#clear $num days ago index
LAST_DATA=`date -d "-$1 days" "+%Y.%m.%d"`


curl -X DELETE "${IP}:${PORT}/*-${LAST_DATA}"
#curl -X GET "${IP}:${PORT}/_cat/indices/?v"
