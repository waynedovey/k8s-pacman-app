#!/bin/bash

kustomize build overlays/dev > kustomize-output/dev/dev.yaml
kustomize build overlays/prod > kustomize-output/prod/prod.yaml
kustomize build overlays/qa > kustomize-output/qa/qa.yaml
