class User < ActiveRecord::Base
  include Authentication
  has_many :affirmations
  has_many :mornings
end
