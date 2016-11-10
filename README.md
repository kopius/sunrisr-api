# MorningAffirmation API

Dedicated Rails API for Sunrisr, an app that quizzes users every morning on their personalized affirmations. More information at the [client repository](https://github.com/kopius/sunrisr).

## API Endpoints

Curl scripts are included in [`scripts`](scripts) to test API endpoints. Except for /sign-up, all endpoints require user authentication.

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/:id`| `users#show`      |

### Affirmations

| Verb     | URI Pattern         | Controller#Action    |
|----------|---------------------|----------------------|
| POST     | `/affirmations`     |`affirmations#create` |
| PUT/PATCH| `/affirmations/:id` |`affirmations#update` |
| GET      | `/affirmations`     |`affirmations#index`  |
| GET      | `/affirmations/:id` |`affirmations#show`   |
| DELETE   | `/affirmations/:id` |`affirmations#destroy`|

### Mornings

| Verb     | URI Pattern     | Controller#Action|
|----------|-----------------|------------------|
| POST     | `/mornings`     |`mornings#create` |
| GET      | `/mornings`     |`mornings#index`  |
| GET      | `/mornings/:id` |`mornings#show`   |
| DELETE   | `/mornings/:id` |`mornings#destroy`|

### MorningAffirmations

| Verb     | URI Pattern                 | Controller#Action            |
|----------|-----------------------------|------------------------------|
| POST     | `/morning_affirmations`     |`morning_affirmations#create` |
| PUT/PATCH| `/morning_affirmations/:id` |`morning_affirmations#update` |
| GET      | `/morning_affirmations`     |`morning_affirmations#index`  |
| GET      | `/morning_affirmations/:id` |`morning_affirmations#show`   |
| DELETE   | `/morning_affirmations/:id` |`morning_affirmations#destroy`|
