#!/bin/bash

curl -H "Authorization: token $ACCESS_TOKEN" -X POST https://api.github.com/repos/$OWNER/$REPO/actions/runners/remove-token | \
  jq -r '.token' > /tmp/remove-token.txt

./config.sh remove --token `cat /tmp/remove-token.txt`
