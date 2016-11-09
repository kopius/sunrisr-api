# local host
curl --include --request DELETE http://localhost:4741/affirmations/$ID \
  --header "Authorization: Token token=$TOKEN"

# deployed host
curl --include --request DELETE https://sunrisr-api.herokuapp.com/affirmations/$ID \
  --header "Authorization: Token token=$TOKEN"
