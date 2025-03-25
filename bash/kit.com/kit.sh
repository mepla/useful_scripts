#curl -s -X GET "https://api.kit.com/v4/tags/$1/subscribers?per_page=1&include_total_count=true" \
#  -H "X-Kit-Api-Key: $KIT_ACCESS_TOKEN"

curl -s -X GET "https://api.kit.com/v4/forms/$1/subscribers?per_page=1&include_total_count=true" \
  -H "X-Kit-Api-Key: $KIT_ACCESS_TOKEN"
