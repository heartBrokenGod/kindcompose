#!/bin/bash

echo "================ Installing helm if not already installed. ================"

# Check if helm is installed
if command -v helm &>/dev/null; then
    echo "helm is already installed."
else
    echo "helm is not installed. Attempting to install..."
    # Install helm
    sudo snap install helm --classic
    if [ $? -eq 0 ]; then
        echo "helm installed successfully."
    else
        echo "Failed to install helm."
        exit 1
    fi
fi

echo "================ Installing helm if not already installed. ================"
