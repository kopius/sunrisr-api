#!/bin/bash

curl --include --request GET http://localhost:4741/morning_affirmations/$ID \
  --header "Authorization: Token token=$TOKEN"
