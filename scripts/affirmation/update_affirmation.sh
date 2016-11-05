#!/bin/bash

curl --include --request PATCH http://localhost:4741/mornings/$ID \
  --header "Authorization: Token token=$TOKEN"
  --data '{
    "affirmation": {
      "prompt": "Today I will",
      "response": "reach for the stars",
      "user_id": 1
    }
  }'
