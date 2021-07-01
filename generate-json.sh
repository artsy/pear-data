#!/usr/bin/env bash
set -euo pipefail

jq -Rsn '
  {
    "current": [],
    "known": [
      inputs
      | . / "\n"
      | (.[1:] | .[] | select(length > 0) | . / ",") as $person
      | { "email": $person[2], "name": $person[0], "username": $person[1] }
    ]
  }
' < ./data.csv > .pear-data
