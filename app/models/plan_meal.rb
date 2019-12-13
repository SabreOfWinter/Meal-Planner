class PlanMeal < ApplicationRecord
  belongs_to :meal
  belongs_to :dayplan
end
