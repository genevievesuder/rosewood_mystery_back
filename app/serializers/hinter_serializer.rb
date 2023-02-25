class HinterSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :address
  has_many :hints
end
