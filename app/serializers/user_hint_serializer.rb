class UserHintSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :hint
end
