# local host
curl --include --request PATCH http://localhost:4741/change-password/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "1",
      "new": "2"
    }
  }'

# deployed host
curl --include --request PATCH https://sunrisr-api.herokuapp.com/change-password/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "1",
      "new": "2"
    }
  }'
