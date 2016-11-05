#!/bin/bash

curl --include --request PATCH http://localhost:4741/morning_affirmations/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "morning_affirmation": {
      "completed": true,
      "morning_id": 1,
      "affirmation_id": 1
    }
  }'
