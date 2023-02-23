class Mystery < ApplicationRecord
    has_many :clues
    has_many :books, through: :clues
    has_many :customers
    has_many :hints
    has_many :hinters, through: :hints
end
