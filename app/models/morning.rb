class Morning < ActiveRecord::Base
  belongs_to :user
  has_many :morning_affirmations, dependent: :destroy

  def completed_all
    return true unless morning_affirmations
    morning_affirmations.each do |ma|
      puts ma
      return false unless ma.completed
    end
    true
  end
end
