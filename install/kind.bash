#!/bin/bash

echo "================ Installing kind if not already installed. ================"

# Check if kind is installed
if command -v kind &>/dev/null; then
    echo "kind is already installed."
else
    echo "kind is not installed. Attempting to install..."
    # Install kind
    go install sigs.k8s.io/kind@v0.30.0
    if [ $? -eq 0 ]; then
        echo "kind installed successfully."
    else
        echo "Failed to install kind."
        exit 1
    fi
fi

echo "================ Installing kind if not already installed. ================"
