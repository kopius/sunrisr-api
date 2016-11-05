#!/bin/bash

curl --include --request PATCH http://localhost:4741/affirmations/$ID \
  --header "Authorization: Token token=$TOKEN"
  --data '{
    "affirmation": {
      "prompt": "Today I will",
      "response": "shoot for the moon",
      "user_id": 1
    }
  }'
