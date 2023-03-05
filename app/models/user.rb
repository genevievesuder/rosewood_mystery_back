class User < ApplicationRecord
has_secure_password
has_many :new_customers
has_many :user_clues
has_many :clues, through: :user_clues

validates_presence_of :email, :character_name
validates :email, uniqueness: true
validates :password, length: { minimum: 8 }, on: :create
end
