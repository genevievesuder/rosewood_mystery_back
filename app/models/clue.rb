class Clue < ApplicationRecord
  belongs_to :book
  belongs_to :mystery
end
