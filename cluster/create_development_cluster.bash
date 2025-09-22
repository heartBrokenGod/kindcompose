#!/bin/bash

echo "================ Creating development-cluster if not already created. ================"

# Check if development cluster is already created
if kubectl cluster-info --context kind-development-cluster &>/dev/null; then
    echo "kind-development-cluster is already created."
else
    echo "kind-development-cluster is not created. Attempting to create..."
    # Start kind-development cluster
    kind create cluster --config cluster/development.yml
    if [ $? -eq 0 ]; then
        echo "kind-development-cluster created successfully."
    else
        echo "Failed to create kind-development-cluster."
        exit 1
    fi
fi

echo "================ Creating development-cluster if not already created. ================"
