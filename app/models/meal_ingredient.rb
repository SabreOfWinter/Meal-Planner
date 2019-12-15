class MealIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :meal
  belongs_to :users
end
