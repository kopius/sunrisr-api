#!/bin/bash

curl --include --request GET http://localhost:4741/mornings/$ID \
  --header "Authorization: Token token=$TOKEN"
