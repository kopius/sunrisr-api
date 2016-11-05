class MorningAffirmation < ActiveRecord::Base
  belongs_to :morning
  belongs_to :affirmation
end
