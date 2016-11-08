class MorningSerializer < ActiveModel::Serializer
  attributes :id, :completed_all, :created_at
  belongs_to :user
end
