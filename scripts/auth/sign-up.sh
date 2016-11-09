# local host
curl --include --request POST http://localhost:4741/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "username": "Example User",
      "password": "an example password",
      "password_confirmation": "an example password"
    }
  }'

# deployed host
curl --include --request POST https://sunrisr-api.herokuapp.com/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "username": "Example User",
      "password": "an example password",
      "password_confirmation": "an example password"
    }
  }'
