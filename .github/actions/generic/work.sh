#!/bin/bash

# Retrieve the input argument if needed
INPUT=$1

# Fetch the last workflow run details
curl -s -H "Authorization: Bearer $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/repos/${GITHUB_REPOSITORY}/actions/runs?per_page=1" \
  | jq '.workflow_runs[0]' > output.json
