class Affirmation < ActiveRecord::Base
  belongs_to :user
  has_many :morning_affirmations, dependent: :destroy
end
