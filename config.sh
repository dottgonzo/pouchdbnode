#!/bin/bash

sleep 2

if [[ "$COUCHUSERNAME" ]]; then

curl -XPUT "http://localhost:5984/_node/node1@127.0.0.1/_config/admins/$COUCHUSERNAME" -d "\"$COUCHPASSW\""

fi

sleep 2

kill -9 $(ps aux | grep pouch| grep -v 'grep'|awk '{print($2)}')