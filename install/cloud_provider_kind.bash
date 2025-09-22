#!/bin/bash

echo "================ Installing cloud-provider-kind if not already installed. ================"

# Check if kind is installed
if command -v cloud-provider-kind &>/dev/null; then
    echo "cloud-provider-kind is already installed."
else
    echo "cloud-provider-kind is not installed. Attempting to install..."
    # Install kind
    go install sigs.k8s.io/cloud-provider-kind@latest
    if [ $? -eq 0 ]; then
        echo "cloud-provider-kind installed successfully."
    else
        echo "Failed to install cloud-provider-kind."
        exit 1
    fi
fi

echo "================ Installing cloud-provider-kind if not already installed. ================"
