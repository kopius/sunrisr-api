# local host
curl --include --request POST http://localhost:4741/affirmations \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "affirmation": {
      "prompt": "Today I will",
      "response": "reach for the stars,
    }
  }'

# deployed host
curl --include --request POST https://sunrisr-api.herokuapp.com/affirmations \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "affirmation": {
      "prompt": "Today I will",
      "response": "reach for the stars",
    }
  }'
