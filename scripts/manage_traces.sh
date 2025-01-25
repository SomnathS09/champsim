#!/bin/bash

# Set the target directory one level up
TARGET_DIR=$(realpath "$(dirname "$0")/../dpc3_traces")

# Function to show usage
usage() {
    echo "Usage: $0 [--download]"
    echo "  --download    Download trace files to the 'dpc3_traces' folder."
    exit 1
}

# Create the target directory
mkdir -p "$TARGET_DIR"
echo "Folder created: $TARGET_DIR"

if [[ $1 == "--download" ]]; then
    # Check for the required file
    TRACE_FILE="dpc3_max_simpoint.txt"
    if [[ ! -f "$TRACE_FILE" ]]; then
        echo "Error: File '$TRACE_FILE' not found in the current directory."
        exit 1
    fi

    # Download traces listed in the file
    echo "Downloading traces to: $TARGET_DIR"
    while read -r LINE; do
        if [[ -n "$LINE" ]]; then
            echo "Downloading: $LINE"
            wget -P "$TARGET_DIR" -c "http://hpca23.cse.tamu.edu/champsim-traces/speccpu/$LINE"
        fi
    done < "$TRACE_FILE"

    echo "Download complete. Files are saved in: $TARGET_DIR"
elif [[ $# -gt 0 ]]; then
    # Handle invalid arguments
    usage
else
    echo "No download requested. Please place the trace files manually in: $TARGET_DIR"
fi
