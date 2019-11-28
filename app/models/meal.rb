class Meal < ApplicationRecord
  validates :name, null: false
  validates :description, null: false
  validates :recipe, null: false

  belongs_to :user
end
