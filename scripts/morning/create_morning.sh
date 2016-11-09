# local host
curl --include --request POST http://localhost:4741/mornings/ \
"Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "morning": {
      "user_id": 2
    }
  }'

# deployed host
curl --include --request POST https://sunrisr-api.herokuapp.com/mornings/ \
"Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "morning": {
      "user_id": 1
    }
  }'
