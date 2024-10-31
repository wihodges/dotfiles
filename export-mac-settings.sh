#!/bin/bash

# Function to run a defaults command and capture output
run_defaults() {
    echo "$1"
    eval "$1"
    echo "Output:"
    $1
}

# List of common defaults commands
commands=(
    "defaults read -g ApplePressAndHoldEnabled"
    "defaults read com.apple.NetworkBrowser BrowseAllInterfaces"
    "defaults read com.apple.Finder FXPreferredViewStyle"
    # Add more commands here...
)

for cmd in "${commands[@]}"; do
    run_defaults "$cmd"
done
