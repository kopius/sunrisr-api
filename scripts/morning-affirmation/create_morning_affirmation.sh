# local host
curl --include --request POST http://localhost:4741/morning_affirmations \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "morning_affirmation": {
      "completed": false,
      "morning_id": 1,
      "affirmation_id": 1
    }
  }'

# deployed host
curl --include --request POST https://sunrisr-api.herokuapp.com/morning_affirmations \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "morning_affirmation": {
      "completed": false,
      "morning_id": 1,
      "affirmation_id": 1
    }
  }'
