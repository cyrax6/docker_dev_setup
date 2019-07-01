#!/bin/bash

DEPLOYMENT_YAML="deployment.yaml"
SERVICE_YAML="service.yaml"

kubectl apply -f $DEPLOYMENT_YAML

echo " ---- DEPLOYMENTS ----"
kubectl get deployments

echo "Continue...?"
read var

echo " ---- PODS ----"
kubectl get pods

echo "Shall I continue deploying services...?"
read var

kubectl apply -f $SERVICE_YAML

echo " ---- SERVICES ---- "
kubectl get services
