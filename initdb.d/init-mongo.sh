#!/bin/bash

mongosh -u "$MONGODB_INITDB_ROOT_USERNAME" -p "$MONGODB_INITDB_ROOT_PASSWORD" admin <<EOF
    use $MONGODB_INITDB_DATABASE;
    db.createUser({
        user: '$MONGODB_INITDB_USERNAME',
        pwd: '$MONGODB_INITDB_PASSWORD',
        roles: ["readWrite"],
    });
EOF
