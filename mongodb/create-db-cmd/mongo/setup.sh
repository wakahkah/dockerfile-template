#!/usr/bin/env bash
echo "Import env variables..."
# wont work if you have '#' in your .env
source .env 
echo "Creating users..."
mongo admin --host localhost -u $MONGO_ROOT_USERNAME -p $MONGO_ROOT_PASSWORD --eval "db = db.getSiblingDB('test_log');db.createUser({user: 'backend', pwd: 'test',roles: [{role: 'readWrite', db: 'test_log'}]});"
echo "Users created."
