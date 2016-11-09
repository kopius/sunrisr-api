# local host
curl --include --request DELETE http://localhost:4741/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"

# deployed host
curl --include --request DELETE https://sunrisr-api.herokuapp.com/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"
