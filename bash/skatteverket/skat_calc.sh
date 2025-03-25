#!/bin/sh

for salary in $(seq 100000 1000 200000);
do
    curl_out=$(curl -s 'https://www7.skatteverket.se/portal-wapi/open/skatteberakning/v1/api/skattetabell/2024/beraknaSkatteavdrag' -H 'Content-Type: application/json' --data-raw "{\"skattesats\":32,\"inkomst\":$salary,\"fodelsear\":1990,\"typ\":\"L\"}")
    echo $salary, $(echo $curl_out | jq .lonefterskatt)
done


