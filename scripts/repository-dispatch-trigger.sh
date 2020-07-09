#!/bin/bash

set -e

main() {
  local id=321
  curl -X POST -u "chenrui333:${GITHUB_TOKEN}" \
    -H "Accept: application/vnd.github.everest-preview+json"  \
    -H "Content-Type: application/json" \
    https://api.github.com/repos/chenrui333/github-action-test/dispatches \
    --data "{\"event_type\":\"trigger-event\",\"client_payload\":{\"id\":$id, \"unit\":false,\"integration\":true}}"
}

main "$@"
