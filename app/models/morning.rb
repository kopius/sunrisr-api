class Morning < ActiveRecord::Base
  belongs_to :user
  has_many :morning_affirmations
end
