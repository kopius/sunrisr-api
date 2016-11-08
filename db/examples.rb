# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

User.create(email: 'sunny@sunny.com', username: 'Sunny', password: '1')

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

# Create a MorningAffirmation with no morning
MorningAffirmation.create([
                            {
                              completed: false,
                              affirmation_id: 1
                            }
                          ])

# Create a MorningAffirmation with a different morning
Morning.create(user_id: 1)
MorningAffirmation.create([
                            {
                              completed: true,
                              morning_id: 2,
                              affirmation_id: 1
                            }
                          ])

User.create(email: 'grumpy@grumpy.com', username: 'Grumpy', password: '1')

Affirmation.create([
                     {
                       prompt: 'I am',
                       response: 'a big old grumpy pants',
                       user_id: 2
                     }
                   ])

Morning.create(user_id: 2)

MorningAffirmation.create([
                            {
                              completed: false,
                              morning_id: 3,
                              affirmation_id: 4
                            }
                          ])
