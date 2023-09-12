#!/bin/bash

# Get the current date and time in the format YYYY-MM-DD_HH-MM-SS
timestamp=$(date +'%Y-%m-%d_%H-%M-%S')

# Prompt the user for the network range
read -p "Enter the network range in CIDR notation (e.g., 192.168.1.0/24): " network_range

# Define the output file name with the timestamp
output_file="${timestamp}_scan_results.txt"

# Perform host discovery scan using nmap and save results to the output file
echo "Scanning hosts on network $network_range..."
nmap -sn "$network_range" > "$output_file"

# Display the scan results file name
echo "Scan complete. Results saved to $output_file"
