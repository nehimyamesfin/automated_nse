#!/bin/bash

#Function to show usage
usage() {
  echo "Usage: $0 <IP> <NSE_Script_Name>"
  echo "Example: $0 192.168.1.1 http-vuln-cve2015-1635"
  exit 1
}

# Check if IP and NSE script are provided
if [ $# -ne 2 ]; then
  usage
fi

# Assign arguments to variables
TARGET_IP=$1
NSE_SCRIPT=$2

# Run the nmap scan with the given IP and NSE script
echo "Running nmap scan on IP: $TARGET_IP with NSE script: $NSE_SCRIPT"
nmap --script "$NSE_SCRIPT" "$TARGET_IP"
echo "Scan Completed!"
