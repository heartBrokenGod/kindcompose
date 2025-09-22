#!/bin/bash

echo "================ Deleting development-cluster if not already deleted. ================"

# Check if development cluster is already deleted
kubectl cluster-info --context kind-development-cluster 2>&1 | grep -q "error"
if [ $? -eq 0 ]; then
    echo "kind-development-cluster is already deleted."
else
    echo "kind-development-cluster is not deleted. Attempting to delete..."
    # Start kind-development cluster
    kind delete cluster --name development-cluster
    if [ $? -eq 0 ]; then
        echo "kind-development-cluster deleted successfully."
    else
        echo "Failed to delete kind-development-cluster."
        exit 1
    fi
fi

echo "================ Deleting development-cluster if not already deleted. ================"
