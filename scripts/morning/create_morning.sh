#!/bin/bash

curl --include --request POST http://localhost:4741/mornings \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "morning": {
      "completed_all": false,
      "user_id": 1
    }
  }'
