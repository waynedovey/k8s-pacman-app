#!/bin/bash

export APP_VERSION="'3.0'"
kustomize build overlays/dev | envsubst > kustomize-output/dev/dev.yaml
kustomize build overlays/qa | envsubst > kustomize-output/qa/qa.yaml
kustomize build overlays/prod | envsubst > kustomize-output/prod/prod.yaml
