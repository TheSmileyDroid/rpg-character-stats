class Comentario < ApplicationRecord
  belongs_to :character

  validates :autor, presence: { message: "Um nome é necessário" }
end
