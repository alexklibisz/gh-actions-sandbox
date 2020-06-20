#!/bin/bash
set -e
branch=$(git rev-parse --abbrev-ref HEAD)
curl -H "Accept: application/vnd.github.everest-preview+json" \
     -H "Authorization: token ${GITHUB_TOKEN}" \
     --request POST \
     --data '{"event_type": "benchmark", "client_payload": { "branch": "'$branch'"}}' \
     https://api.github.com/repos/alexklibisz/gh-actions-sandbox/dispatches
