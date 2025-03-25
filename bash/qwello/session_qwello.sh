#!/bin/sh

curl -s 'https://services.qwello.eu/v1/us/public/user/status?language=en' \
-H 'X-Api-Key: $QWELLO_API_KEY' | jq .
