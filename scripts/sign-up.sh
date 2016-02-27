#!/bin/bash
# TEMPLATE
# curl --include --request POST http://localhost:3000/sign-up \
#   --header "Content-Type: application/json" \
#   --data '{
#     "credentials": {
#       "email": "an@example.email",
#       "password": "an example password",
#       "password_confirmation": "an example password"
#     }
#   }'

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "admin@plotpointo.com",
      "password": "admin",
      "password_confirmation": "admin"
    }
  }'
