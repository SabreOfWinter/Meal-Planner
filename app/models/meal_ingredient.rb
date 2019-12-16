class MealIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :meal
  validates :amount, numericality: {greater_than: 0}

  scope :user_meal_ingredients, -> (user) {where(user_id: user)}
end
