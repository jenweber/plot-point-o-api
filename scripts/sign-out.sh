#!/bin/bash
# TEMPLATE
# curl --include --request DELETE http://localhost:3000/sign-out/$ID \
#   --header "Authorization: Token token=$TOKEN"

curl --include --request DELETE http://localhost:3000/sign-out/1 \
  --header "Authorization: Token token=97ef010628c5ca6c21b0cbde077ed261"
