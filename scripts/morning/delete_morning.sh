#!/bin/bash

curl --include --request DELETE http://localhost:4741/mornings/$ID \
  --header "Authorization: Token token=$TOKEN"
