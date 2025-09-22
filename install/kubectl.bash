#!/bin/bash

echo "================ Installing kubectl if not already installed. ================"

# Check if kubectl is installed
if command -v kubectl &>/dev/null; then
    echo "kubectl is already installed."
else
    echo "kubectl is not installed. Attempting to install..."
    # Install kubectl
    sudo snap install kubectl --classic
    if [ $? -eq 0 ]; then
        echo "kubectl installed successfully."
    else
        echo "Failed to install kubectl."
        exit 1
    fi
fi

echo "================ Installing kubectl if not already installed. ================"
