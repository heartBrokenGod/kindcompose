#!/bin/bash


kubectl apply -f istio/1-istio-init.yaml

kubectl apply -f istio/2-istio-minikube.yaml

kubectl apply -f istio/3-kiali-secret.yaml

kubectl apply -f istio/4-label-default-namespace.yaml