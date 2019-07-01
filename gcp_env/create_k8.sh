#!/bin/bash

CLUSTER_NAME="cubes"

gcloud container clusters create $CLUSTER_NAME --num-nodes 1 --enable-basic-auth --issue-client-certificate

gcloud container clusters get-credentials $CLUSTER_NAME
echo "	-- Got creds --"

# Verify that kubectl is behaving itself
kubectl get nodes


