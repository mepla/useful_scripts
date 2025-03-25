#!/bin/bash

curl 'https://www.skatteverket.se/omkostnadsbelopp-api/rest/v1/resultat' \
  -H 'Accept: application/json, text/plain, */*' \
  -H 'Accept-Language: en-US,en;q=0.9,fa;q=0.8,sv;q=0.7' \
  -H 'Connection: keep-alive' \
  -H 'Content-Type: application/json;charset=UTF-8' \
  -H $'Cookie: SKVCookieAllow=strictlyNecessary; lb2_www-skatteverket_pro=\u0021nBQrskrw3ovlcu3z3QBeBEVxxDpZ5nQCwCdJu3qPcNqVesv//RBeUfVfvtznn841puHuBahHVojzomI=; lb_www-skatteverket_pro=\u0021512lUvp98fXGLAYqXycna1Ml9DHMDKckoyp5JTZHQ7cjHecK/mwLmFZ6l/YpQJ6WV0i7lnPo0u30Tw==; JSESSIONID=B8F325740E192FE2D5378E7AE05E5EDF; sessionId=4dc63694-3389-4c90-be72-72b55a74e738; TS010adbd3=0182156ab5e10122f3472af96c73e70a2688c354241d1ae1a80978e5ffbddc6cdb4196ea81557f7298b7947f6ae839cd36deb9291b; TS06054595027=08a48f3538ab200054f2dc12cf22ec9dd4cc3be80bc7cfc99fc3a6ec9350ba86a3a9969a0fe264bf0813cf469a113000f8b88358e1012cbdf83445000bc5807c441c4ee8b89c617a3f39fe0c54902b14555e7eee49c3a50fa094c1eb65daf8e7' \
  -H 'DNT: 1' \
  -H 'Origin: https://www.skatteverket.se' \
  -H 'Referer: https://www.skatteverket.se/privat/skatter/vardepapper/deklareraaktierochovrigavardepapper/berakningshjalpforomkostnadsbelopp.4.4a4d586616058d860bc564c.html' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Site: same-origin' \
  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua: "Google Chrome";v="131", "Chromium";v="131", "Not_A Brand";v="24"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "macOS"' \
  --data-raw "$(jq -c . < ~/Desktop/tax.json)"