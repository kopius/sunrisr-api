# local host
curl --include --request DELETE http://localhost:4741/mornings/$ID \
  --header "Authorization: Token token=$TOKEN"

# deployed host
curl --include --request DELETE https://sunrisr-api.herokuapp.com/mornings/$ID \
  --header "Authorization: Token token=$TOKEN"
