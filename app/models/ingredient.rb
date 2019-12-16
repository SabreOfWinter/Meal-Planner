class Ingredient < ApplicationRecord
  validates :name, uniqueness: true, presence:true
  validates :amount, numericality: {greater_than: 0}
  validates :energy, numericality: {greater_than: 0}
  validates :fat, numericality: {greater_than: 0}
  validates :saturates, numericality: {greater_than: 0}
  validates :carbohydrates, numericality: {greater_than: 0}
  validates :sugar, numericality: {greater_than: 0}
  validates :fibre, numericality: {greater_than: 0}
  validates :protein, numericality: {greater_than: 0}
  validates :salt, numericality: {greater_than: 0}

  has_many :meal_ingredient
end
