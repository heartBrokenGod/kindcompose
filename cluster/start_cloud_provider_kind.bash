#!/bin/bash

echo "================ Starting cloud-provider-kind if not already started. ================"

# Check if gedit is running

if pgrep -f -x "cloud-provider-kind" > /dev/null
then
    echo "cloud-provider-kind is already Running"
else
    echo "cloud-provider-kind is not Running, attempting to Start"
    nohup cloud-provider-kind &
    echo "cloud-provider-kind started successfully"
fi

echo "================ Starting cloud-provider-kind if not already started. ================"
