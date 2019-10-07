#!/bin/bash

./config.sh &

pouchdb-server -m
pouchdb-server -o 0.0.0.0 -m