#!/bin/bash

oc project pacman-app

oc apply -f deploy/mongodb-persistent.yaml

oc new-app --name=mongodb36 --template=mongodb-persistent \
    -e MONGODB_USER=pacman \
    -e MONGODB_PASSWORD=pacman \
    -e MONGODB_DATABASE=pacman \
    -e MONGODB_ADMIN_PASSWORD=pacman

