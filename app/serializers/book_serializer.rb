class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :genre, :image
  has_many :clues

end
