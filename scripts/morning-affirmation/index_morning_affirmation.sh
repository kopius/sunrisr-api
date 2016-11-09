# local host
curl --include --request GET http://localhost:4741/morning_affirmations \
  --header "Authorization: Token token=$TOKEN"

# deployed host
curl --include --request GET https://sunrisr-api.herokuapp.com/morning_affirmations \
  --header "Authorization: Token token=$TOKEN"
