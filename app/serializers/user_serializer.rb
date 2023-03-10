class UserSerializer < ActiveModel::Serializer
  attributes :id, :character_name, :email, :clues, :hints, :notes
end
