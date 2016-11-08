class MorningSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  belongs_to :user
end
