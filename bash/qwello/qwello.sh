#!/bin/sh

curl -s 'https://backend.qwello.eu/api/1.0/station/989c53f3-535b-45ed-b2be-0f74aa20696c/?language=' \
-H 'X-Api-Key: $QWELLO_API_KEY' | jq .
