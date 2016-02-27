#!/bin/bash
# TEMPLATE
# curl --include --request PATCH http://localhost:3000/change-password/$ID \
#   --header "Authorization: Token token=$TOKEN" \
#   --header "Content-Type: application/json" \
#   --data '{
#     "passwords": {
#       "old": "admin",
#       "new": "pass"
#     }
#   }'

  curl --include --request PATCH http://localhost:3000/change-password/1 \
    --header "Authorization: Token token=97ef010628c5ca6c21b0cbde077ed261" \
    --header "Content-Type: application/json" \
    --data '{
      "passwords": {
        "old": "admin",
        "new": "pass"
      }
    }'
