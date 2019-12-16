class Meal < ApplicationRecord
  validates :name, presence: true
  validates :description, allow_blank: true, format: { with: /\A[a-zA-Z]+\z/, message: "only accepts letters"}

  has_many :meal_ingredients
end
