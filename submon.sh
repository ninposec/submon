#!/bin/bash

# Function to display usage information
function display_usage() {
    echo "Usage: $0 [-d domain] [-t delay]"
    echo ""
    echo "Options:"
    echo "  -d   The domain to use in the command (required)"
    echo "  -t   The delay between command executions, in minutes e.g. 60m (required)"
}

# Check if required arguments are missing
if [ "$#" -lt 4 ]; then
    display_usage
    exit 1
fi

# Parse the command line arguments
while getopts ":d:t:" opt; do
  case $opt in
    d) domain="$OPTARG"
    ;;
    t) delay="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
        display_usage
        exit 1
    ;;
    :) echo "Option -$OPTARG requires an argument." >&2
        display_usage
        exit 1
    ;;
  esac
done

# Run the command every hour with the specified domain and delay
while true; do
    # Run your command here, using the domain and delay variables
    subfinder -silent -d $domain | anew /tmp/subdomains_$domain.txt | notify -silent -bulk -pc /tmp/provider.yaml
    
    # Sleep for the specified delay before running the command again
    sleep $delay
done
