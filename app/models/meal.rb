class Meal < ApplicationRecord
  validates :name, presence: true, null: false
  validates :description, allow_blank: true, format: { with: /\A[a-zA-Z]+\z/, message: "only accepts letters"}

  has_one :users
  has_many :meal_ingredients
end
