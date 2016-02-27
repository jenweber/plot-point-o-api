curl --include --request PATCH http://localhost:3000/games/5 \
  --header "Content-Type: application/json" \
  --data '{
    "game": {
      "platforms": "PC, Xbox"
    }
  }'
