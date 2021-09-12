class Character < ApplicationRecord
  has_many :comentarios

  validates :name, presence: { message: "Necessita de um nome" }
  validates :hp, numericality: { message: `%{value} parece errado` }
  validates :fp, numericality: { message: `%{value} parece errado` }
end
