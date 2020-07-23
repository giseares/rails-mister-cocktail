class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :ingredients, through: :doses
  has_many :doses
end