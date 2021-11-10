#!/bin/bash

oc project pacman-app-cicd
oc apply -f pipeline.yaml
oc apply -f resources.yaml
oc apply -f task-build-s2i.yaml
oc apply -f task-deploy.yaml
oc apply -f task-test.yaml
oc apply -f task-promote.yaml
oc apply -f quay-secret.yaml
# ACM 

oc apply -f task-create-namespaces.yaml
oc apply -f task-create-dev-app.yaml
oc apply -f task-create-qa-app.yaml
oc apply -f task-create-prod-app.yaml

#oc new-project pacman-app-dev
#oc new-project pacman-app-qa
