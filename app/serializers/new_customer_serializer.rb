class NewCustomerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :address
  has_one :user
end
