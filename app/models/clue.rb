class Clue < ApplicationRecord
  belongs_to :mystery
  has_many :user_clues
  has_many :users, through: :user_clues

end
