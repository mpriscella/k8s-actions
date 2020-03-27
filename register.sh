#!/bin/bash

curl -H "Authorization: token $ACCESS_TOKEN" -X POST https://api.github.com/repos/$OWNER/$REPO/actions/runners/registration-token | \
  jq -r '.token' > /tmp/token.txt

./config.sh --url https://github.com/$OWNER/$REPO --token `cat /tmp/token.txt`
touch /tmp/healthy
./run.sh || rm -rf /tmp/healthy
