#!/bin/bash

IP=127.0.0.1
PORT=5601
ID=My-Patterns-*
#ID=My-Patterns-`(date +%Y.%m)`-* #Using Crontab Auto Generate Date. ex: My-Patterns-2021.10-*

curl -X POST "${IP}:${PORT}/api/saved_objects/index-pattern/${ID}" -H 'kbn-xsrf: true' -H 'Content-Type: application/json' -d'
{
  "attributes": {
    "title": "'${ID}'"
  }
}'
