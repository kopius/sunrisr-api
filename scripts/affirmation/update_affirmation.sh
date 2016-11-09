# local host
curl --include --request PATCH http://localhost:4741/affirmations/$ID \
  --header "Authorization: Token token=$TOKEN"
  --data '{
    "affirmation": {
      "prompt": "Today I will",
      "response": "shoot for the moon",
    }
  }'

# deployed host
curl --include --request PATCH https://sunrisr-api.herokuapp.com/affirmations/$ID \
  --header "Authorization: Token token=$TOKEN"
  --data '{
    "affirmation": {
      "prompt": "Today I will",
      "response": "shoot for the moon",
    }
  }'
