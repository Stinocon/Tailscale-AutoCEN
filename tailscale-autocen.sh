#!/bin/bash

# Execute the command 'tailscale exit-node list' to get the exit-node list. Then i take just the second column
hostnames=$(tailscale exit-node list | awk '{print $2}' | tail -n +2)

# Count rows
num_lines=$(echo "$hostnames" | wc -l)

# If there are not hostnames, exit
if [ "$num_lines" -eq 0 ]; then
    echo "No available hostnames."
    exit 1
fi

# Random hostname selection
random_index=$((RANDOM % num_lines + 1))
selected_hostname=$(echo "$hostnames" | sed -n "${random_index}p")

# Run command 'tailscale up' whit the hostname
command="tailscale up --exit-node=$selected_hostname --exit-node-allow-lan-access=true -accept-routes=true"
echo "Run: $command"
eval "$command"
