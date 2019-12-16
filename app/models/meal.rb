class Meal < ApplicationRecord
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only accepts letters"}
  validates :description, allow_blank: true, format: { with: /\A[a-zA-Z]+\z/, message: "only accepts letters"}

  validates :user, presence: true, numericality: {greater_than: 0}

  has_many :meal_ingredients
end
