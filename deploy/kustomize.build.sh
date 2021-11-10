#!/bin/bash

export APP_VERSION=1.0
kustomize build deploy/overlays/dev | envsubst > kustomize-output/dev/dev.yaml
kustomize build deploy/overlays/qa | envsubst > kustomize-output/qa/qa.yaml
kustomize build deploy/overlays/prod | envsubst > kustomize-output/prod/prod.yaml
