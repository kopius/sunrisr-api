#!/bin/bash

curl --include --request GET http://localhost:4741/affirmations \
  --header "Authorization: Token token=$TOKEN"
