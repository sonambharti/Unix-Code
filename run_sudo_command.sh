#!/bin/bash

# Define your sudo password here (INSECURE!)
PASSWORD="your_sudo_password_here"

# Check if a command is provided
if [ $# -eq 0 ]; then
    echo "Executing command: $0 "
    exit 1 # exit with an error or abnormal termination
fi

# Run the command with sudo, using -S to accept password from stdin
echo "$PASSWORD" | sudo -S "$@"


# Command to execute this file to run command <sudo apt update>
# ./run_sudo_command.sh apt update
