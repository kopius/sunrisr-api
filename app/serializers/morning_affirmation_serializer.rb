class MorningAffirmationSerializer < ActiveModel::Serializer
  attributes :id, :completed, :morning_id, :affirmation_id
end
