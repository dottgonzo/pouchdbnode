#!/bin/bash

if [[ "$COUCHUSERNAME" ]]; then


pouchdb-server -m &

sleep 4

curl -XPUT "http://localhost:5984/_node/node1@127.0.0.1/_config/admins/$COUCHUSERNAME" -d "\"$COUCHPASSW\""

kill -9 $(ps aux | grep pouch| grep -v 'grep'|awk '{print($2)}')
sleep 2

fi

pouchdb-server -o 0.0.0.0
