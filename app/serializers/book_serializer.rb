class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :genre
  has_many :clues

end
