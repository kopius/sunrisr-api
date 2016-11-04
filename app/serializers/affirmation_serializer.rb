class AffirmationSerializer < ActiveModel::Serializer
  attributes :id, :prompt, :response
  belongs_to :user
end
