#!/bin/bash


echo "================ Adding DNS binding for all service ip in "dev.\<_SERVICE_NAME_\>.com" . ================"

# Array to store service information
declare -A services_map

# Get services and their external IPs
# Filter for services with external IPs (LoadBalancer or NodePort with external IP assigned)
while IFS=$'\t' read -r name ip; do
    if [[ -n "$ip" ]]; then
        services_map["$name"]="$ip"
    fi
done < <(kubectl get services -o json | jq -r '.items[] | select(.status.loadBalancer.ingress[0].ip) | "\(.metadata.name)\t\(.status.loadBalancer.ingress[0].ip)"')


# Delete the previous ip mapping to .dev host
# FILE="/etc/hosts"
# sudo sed -i "/dev\./d" "$FILE"
# echo "Lines containing 'dev.' deleted from '$FILE'."
cluster/remove_service_name_ip_binding.bash

# Add entries to /etc/hosts
for service_name in "${!services_map[@]}"; do
    external_ip="${services_map[$service_name]}"
    echo "$external_ip dev.$service_name.com" | sudo tee -a /etc/hosts
    echo "Added $external_ip dev.$service_name.com to /etc/hosts"
done

echo "Loadbalancer service ip bound to dev.<_SERVICE_NAME_>.com format"

echo "================ Adding DNS binding for all service ip in "dev.\<_SERVICE_NAME_\>.com" . ================"
