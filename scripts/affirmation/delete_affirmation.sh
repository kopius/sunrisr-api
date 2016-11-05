#!/bin/bash

curl --include --request DELETE http://localhost:4741/affirmations/$ID \
  --header "Authorization: Token token=$TOKEN"
