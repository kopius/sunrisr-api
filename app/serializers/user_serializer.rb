class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username
  has_many :mornings
  has_many :affirmations
end
