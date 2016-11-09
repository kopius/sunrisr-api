# local host
curl --include --request DELETE http://localhost:4741/morning_affirmations/$ID \
  --header "Authorization: Token token=$TOKEN"

# deployed host
curl --include --request DELETE https://sunrisr-api.herokuapp.com/morning_affirmations/$ID \
  --header "Authorization: Token token=$TOKEN"
