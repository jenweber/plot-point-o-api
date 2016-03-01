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

curl --include --request POST http://plot-point-o-api.herokuapp.com/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "admin2@plotpointo.com",
      "password": "admin2",
      "password_confirmation": "admin2"
    }
  }'
