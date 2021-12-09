#!/bin/bash

TYPE_NAME=${name for logstash out put}
IP=127.0.0.1
PORT=5601
ID=${TYPE_NAME}-`(date +%Y.%m)`.*

curl -X POST "${IP}:${PORT}/api/saved_objects/index-pattern/${ID}" -H 'kbn-xsrf: true' -H 'Content-Type: application/json' -d'
{
  "attributes": {
    "title": "'${ID}'"
  }
}'
