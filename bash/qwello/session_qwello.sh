#!/bin/sh

curl -s 'https://services.qwello.eu/v1/us/public/user/status?language=en' \
-H 'X-Api-Key: eyJhbGciOiJFUzI1NiJ9.eyJzdWIiOiJcL1JGTGZkWUFSOHVnYXBkQ2gzdFhTdz09IiwiaWF0IjoxNzAwMzc5NDU2fQ.nGsR0yAKCuoYnwz-zEjNRYFsZ00qWIL41kHAtUUAU3Qv4yE3AJIiYLQbecj5xchtCZe9Fu02OOdN4YRX3hKv4g' | jq .
