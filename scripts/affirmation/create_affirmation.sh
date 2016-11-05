#!/bin/bash

curl --include --request POST http://localhost:4741/affirmations \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "affirmation": {
      "prompt": "Today I will",
      "response": "reach for the stars",
      "user_id": 1
    }
  }'
