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

# Check for session expiration error
if grep -q "Error: session expired" "$OUTPUT_FILE"; then
  echo "Error: Atlas CLI session expired." >&2
  echo "Please note that your session expires periodically." >&2
  echo "If you use Atlas CLI for automation, see:" >&2
  echo "  https://www.mongodb.com/docs/atlas/cli/stable/atlas-cli-automate/" >&2
  echo "To login, run:" >&2
  echo "  atlas auth login" >&2
  exit 2
fi
