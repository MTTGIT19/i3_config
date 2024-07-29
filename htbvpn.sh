#!/bin/bash

# Get tun0 status
TUN0_STATUS=$(ip a show tun0 2>/dev/null)

# UTF-16 for nf-md-cube_outline
ICON="\U000F01A7"

# Check if tun0 is up
if [[ $? -eq 0 ]]; then
    # Extract the IP address
    IP_ADDRESS=$(echo "$TUN0_STATUS" | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

    # Online vs offline display
    if [[ -n "$IP_ADDRESS" ]]; then
        echo -e "${ICON} tun0: $IP_ADDRESS"
    else
        echo -e "${ICON} offline"
    fi
else
    echo -e "${ICON} tun0: offline"
fi
