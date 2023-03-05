class UserClue < ApplicationRecord
  belongs_to :user
  belongs_to :clue
end
