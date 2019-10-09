if [[ "$COUCHUSERNAME" ]]; then

sleep 2

pouchdb-server -m &


curl -XPUT "http://localhost:5984/_node/node1@127.0.0.1/_config/admins/$COUCHUSERNAME" -d "\"$COUCHPASSW\""

sleep 4

kill -9 $(ps aux | grep pouch| grep -v 'grep'|awk '{print($1)}')
sleep 2

fi

pouchdb-server -o 0.0.0.0 -m
