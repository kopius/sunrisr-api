#!/bin/bash

curl --include --request DELETE http://localhost:4741/morning_affirmations/$ID \
  --header "Authorization: Token token=$TOKEN"
