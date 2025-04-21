#!/bin/bash

OUTPUT_FILE="$1"
shift
COMMAND=("$@")

# Ensure output directory exists
OUTDIR=$(dirname "$OUTPUT_FILE")
mkdir -p "$OUTDIR"

# Check if Atlas CLI is installed
if ! command -v atlas &> /dev/null; then
  echo "Atlas CLI not found. Please install it first." >&2
  exit 1
fi

echo "Running: atlas ${COMMAND[*]}"
atlas "${COMMAND[@]}" > "$OUTPUT_FILE" 2>&1
