IP=127.0.0.1
TYPE_NAME=$index_name #need exact match
PORT=5601

#clear $num months ago indexi, if need del before 1, please change the $var number.
LAST_DATA=`date -d "-$1 months" "+%Y.%m".*`


curl -X DELETE "${IP}:${PORT}/api/saved_objects/index-pattern/${TYPE_NAME}-${LAST_DATA}" -H 'kbn-xsrf: true'
