class Hinter < ApplicationRecord
    has_many :hints
    has_many :mysteries, through: :hints
end
