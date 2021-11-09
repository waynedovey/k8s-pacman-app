#!/bin/bash

oc project pacman-app-cicd
oc delete -f pipeline.yaml
oc delete -f resources.yaml
oc delete -f task-build-s2i.yaml
oc delete -f task-deploy.yaml
oc delete -f task-test.yaml
oc delete -f task-promote.yaml
oc delete -f quay-secret.yaml

# ACM 

oc delete -f task-create-namespaces.yaml
oc delete -f task-create-dev-app.yaml
oc delete -f task-create-qa-app.yaml
oc delete -f task-create-prod-app.yaml

oc delete project pacman-app-dev
oc delete project pacman-app-stage
