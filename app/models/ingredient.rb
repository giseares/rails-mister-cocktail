class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
