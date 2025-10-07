#!/bin/bash

#create namespace db
kubectl apply -f dbs/namespace.yaml

# install all dbs
kubectl apply -f dbs/mongo/install.yaml

kubectl apply -f dbs/kafka/install.yaml

kubectl apply -f dbs/mysql/install.yaml

kubectl apply -f dbs/redis/install.yaml