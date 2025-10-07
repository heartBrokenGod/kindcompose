#!/bin/bash

#create namespace db
kubectl apply -f namespace.yaml

# install all dbs
kubectl apply -f mongo/install.yaml

kubectl apply -f kafka/install.yaml

kubectl apply -f mysql/install.yaml

kubectl apply -f redis/install.yaml