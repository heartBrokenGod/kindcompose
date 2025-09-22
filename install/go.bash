#!/bin/bash

echo "================ Installing go if not already installed. ================"

# Check if go is installed
if command -v go &>/dev/null; then
    echo "go is already installed."
else
    echo "go is not installed. Attempting to install..."
    # Install go
    sudo snap install go --classic
    if [ $? -eq 0 ]; then
        echo "go installed successfully."
    else
        echo "Failed to install go."
        exit 1
    fi
fi

if ! grep -q 'PATH="$HOME/go/bin:$PATH"' ~/.profile; then
  echo 'PATH="$HOME/go/bin:$PATH"' >> ~/.profile
  echo "Added PATH=\"\$HOME/go/bin:\$PATH\" to ~/.profile"
else
  echo "PATH=\"\$HOME/go/bin:\$PATH\" already exists in ~/.profile"
fi

echo "================ Installing go if not already installed. ================"
