# local host
curl --include --request POST http://localhost:4741/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "sunny@sunny.com",
      "password": "1"
    }
  }'

# deployed host
curl --include --request POST https://sunrisr-api.herokuapp.com/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "sunny@sunny.com",
      "password": "1"
    }
  }'
