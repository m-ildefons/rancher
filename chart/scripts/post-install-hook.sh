#!/bin/bash -e

timeout="${TIMEOUT:-"300"}"

kubectl \
  --namespace cattle-system \
  rollout status deployment/rancher-webhook \
  --wait \
  --timeout "${timeout}s"
