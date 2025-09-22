#!/bin/bash

echo "================ Stopping cloud-provider-kind if not already stopped. ================"

# Check if cloud-provider-kind is running

if pgrep -f -x "cloud-provider-kind" > /dev/null
then
    echo "cloud-provider-kind is still running, attempting to Stop"
    sudo pkill -f cloud-provider-kind
    rm -f nohup.out
    echo "cloud-provider-kind stopped successfully"
else
    echo "cloud-provider-kind is not running"
fi

echo "================ Stopping cloud-provider-kind if not already stopped. ================"
