class HinterSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :address, :image
  has_many :hints
end
