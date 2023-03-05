class User < ApplicationRecord
has_secure_password
has_many :new_customers
has_many :user_clues
has_many :user_hints
has_many :clues, through: :user_clues
has_many :hints, through: :user_hints


validates_presence_of :email, :character_name
validates :email, uniqueness: true
validates :password, length: { minimum: 8 }, on: :create
end
