#!/bin/bash


oc new-project pacman-app-cicd


oc create -f 01_create_namespaces.yaml
oc create -f 02_create_dev_app_using_acm.yaml
oc create -f 03_create_qa_app_using_acm.yaml
oc create -f 04_create_prd_app_using_acm.yaml

oc adm policy add-cluster-role-to-user cluster-admin system:serviceaccount:etherpad-cicd:pipeline

oc apply -f pipeline-acm.yaml

oc apply -f tekton-source-pvc.yaml

oc apply -f pipelinerun.yaml

