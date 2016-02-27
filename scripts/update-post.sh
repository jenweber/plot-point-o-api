# curl --include --request PATCH http://localhost:3000/spoilery_posts/6 \
#   --header "Content-Type: application/json" \
#   --data '{
#     "spoilery_post": {
#       "title": "I did a patch for this title"
#     }
#   }'

  curl --include --request PATCH http://localhost:3000/no_spoilers_posts/5 \
    --header "Content-Type: application/json" \
    --data '{
      "no_spoilers_post": {
        "title": "I did a patch for this title"
      }
    }'
