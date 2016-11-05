#!/bin/bash

curl --include --request PATCH http://localhost:4741/mornings/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "morning": {
      "completed_all": "true",
      "user_id": 1
    }
  }'
