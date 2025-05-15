#!/bin/bash

# Input JSON file
INPUT_JSON="example.json"
# Output flattened JSON file
OUTPUT_JSON="example_flat.json"

CRED_NAME="power-of-representation"

# Function to recursively flatten JSON fields
flatten_json() {
  local prefix="$1"
  local json="$2"

  echo "$json" | jq -c 'to_entries | .[]' | while IFS= read -r entry; do
    local key=$(echo "$entry" | jq -r '.key')
    local value=$(echo "$entry" | jq -c '.value')

    # Construct the new key name
    local new_key
    if [ -z "$prefix" ]; then
      new_key="$key"
    else
      new_key="${prefix}_$key"
    fi

    # Check if the value is an object
    if echo "$value" | jq -e 'type == "object"' > /dev/null; then
      # Recursively flatten nested objects
      flatten_json "$new_key" "$value"
    else
      # Output the flattened key-value pair
      echo "{\"$new_key\": $value}"
    fi
  done
}

# Extract the original JSON and keep all top-level properties intact
jq -c '.' "$INPUT_JSON" | while IFS= read -r json; do
  # Flatten only the specified nested property
  nested=$(echo "$json" | jq -c ".\"urn:eudi:$CRED_NAME:nl:1\"")
  flattened=$(flatten_json "" "$nested" | jq -s 'add')
  # Merge flattened property back into the original structure
  echo "$json" | jq ".\"urn:eudi:$CRED_NAME:nl:1\" = \$flattened" --argjson flattened "$flattened" > "$OUTPUT_JSON"
done

# Indicate completion
echo "Flattened JSON saved to $OUTPUT_JSON"
