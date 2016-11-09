# local host
curl --include --request PATCH http://localhost:4741/morning_affirmations/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "morning_affirmation": {
      "completed": true,
    }
  }'

# deployed host
curl --include --request PATCH https://sunrisr-api.herokuapp.com/morning_affirmations/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "morning_affirmation": {
      "completed": true,
    }
  }'
