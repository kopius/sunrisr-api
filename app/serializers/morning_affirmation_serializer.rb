class MorningAffirmationSerializer < ActiveModel::Serializer
  attributes :id, :completed
  belongs_to :morning
  belongs_to :affirmation
end
