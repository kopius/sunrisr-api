# local host
curl --include --request GET http://localhost:4741/users \
  --header "Authorization: Token token=$TOKEN"

# deployed host
  curl --include --request GET https://sunrisr-api.herokuapp.com/users \
    --header "Authorization: Token token=$TOKEN"
