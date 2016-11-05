#!/bin/bash

curl --include --request GET http://localhost:4741/affirmations/$ID \
  --header "Authorization: Token token=$TOKEN"
  --data '{
    "affirmation": {
      "prompt": "Today I will",
      "response": "reach for the stars",
      "user_id": 1`
    }
  }'
