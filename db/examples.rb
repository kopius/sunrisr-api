# This file contains all the record creation needed to experiment with Sunrisr
# during development.

User.create(email: 'sunny@sunny.com', username: 'Sunny', password: 'sunshine')

Affirmation.create([
                     {
                       prompt: 'Today I will',
                       response: 'reach for the stars',
                       user_id: 1
                     },
                     {
                       prompt: 'I love',
                       response: 'my friends and family',
                       user_id: 1
                     },
                     {
                       prompt: 'My mind and body',
                       response: 'are in perfect balance',
                       user_id: 1
                     }
                   ])

Morning.create(user_id: 1)

MorningAffirmation.create([
                            {
                              completed: false,
                              morning_id: 1,
                              affirmation_id: 1
                            },
                            {
                              completed: false,
                              morning_id: 1,
                              affirmation_id: 2
                            },
                            {
                              completed: false,
                              morning_id: 1,
                              affirmation_id: 3
                            }
                          ])
