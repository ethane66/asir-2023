#!/bin/bash

# Get shutdown delay from the user
read -p "Enter the shutdown delay (in minutes): " delay_minutes

# Calculate the delay in seconds
delay_seconds=$((delay_minutes * 60))

# Run the push.sh script 
./push.sh

# Initiate shutdown after the delay
shutdown -s -t $delay_seconds 
