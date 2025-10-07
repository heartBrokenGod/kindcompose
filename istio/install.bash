#!/bin/bash


kubectl apply -f 1-istio-init.yaml

kubectl apply -f 2-istio-minikube.yaml

kubectl apply -f 3-kiali-secret.yaml

kubectl apply -f 4-label-default-namespace.yaml