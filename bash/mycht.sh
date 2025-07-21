#!/bin/bash

APP_NAME="mycht"

# Check if an argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <command>"
    exit 1
fi

# Get the command from the first argument
command="$1"

# Construct the markdown filename
filename="${command}.md"

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: $filename does not exist"
    exit 1
fi

# Determine XDG_CONFIG_HOME, default to ~/.config if not set
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

# Path to the config file
CONFIG_FILE="$XDG_CONFIG_HOME/$APP_NAME/config.conf"

# Check if the config file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: Configuration file $CONFIG_FILE does not exist"
    exit 1
fi

# Source the config file to load CHT_CAT variable
source "$CONFIG_FILE"

# Check if CHT_CAT variable is set after sourcing
if [ -z "$CHT_CAT" ]; then
    echo "Error: CHT_CAT variable is not set in $CONFIG_FILE"
    exit 1
fi

# Open the file with the CHT_CAT specified in the config file
$CHT_CAT "$filename"
