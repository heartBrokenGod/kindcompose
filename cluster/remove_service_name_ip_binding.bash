#!/bin/bash

echo "================ Removing all DNS binding for "dev.*.com" . ================"

# Delete the previous ip mapping to .dev host
FILE="/etc/hosts"
sudo sed -i "/dev\./d" "$FILE"
echo "All Lines containing 'dev.*' deleted from '$FILE'."

echo "================ Removing all DNS binding for "dev.*.com" . ================"
