#!/bin/bash
curl -H "Accept: application/vnd.github.everest-preview+json" \
     -H "Authorization: token ${GITHUB_TOKEN}" \
     --request POST \
     --data '{"event_type": "benchmark", "client_payload": { "text": "a title"}}' \
     https://api.github.com/repos/alexklibisz/gh-actions-sandbox/dispatches
