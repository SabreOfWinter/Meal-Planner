class MealIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :meal
  validates :amount, numericality: {greater_than: 0}
end
