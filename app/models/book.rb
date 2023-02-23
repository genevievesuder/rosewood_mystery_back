class Book < ApplicationRecord
    has_many :clues
    has_many :mysteries, through: :clues
end
