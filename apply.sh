#!/usr/bin/env bash

set -e
set -u

# Export any form of kubectl command that you use to interact with your cluster into KUBECTL_COMMAND.
# It can be as simple as
#
#   export KUBECTL_COMMAND="kubectl"
#
# or if you are using contexts, e.g.:
#
#   export KUBECTL_COMMAND="kubectl --context=my-cloud-cluster-context"
#
kubectl create -f namespace.yml
kubectl create -f . --recursive

