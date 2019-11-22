class Ingredient < ApplicationRecord
  belongs_to :meal
#  validates :name, :meal, presence: true
  validates :name, uniqueness: true, presence: true
  validates :energy, numericality: { greater_than_or_equal_to: 0, only_integer: true }, presence: true
  validates :fat, numericality: { greater_than_or_equal_to: 0 }, presence: true
  validates :saturates, numericality: { greater_than_or_equal_to: 0 }, presence: true
  validates :carbohydrates, numericality: { greater_than_or_equal_to: 0 }, presence: true
  validates :sugar, numericality: { greater_than_or_equal_to: 0 }, presence: true
  validates :fibre, numericality: { greater_than_or_equal_to: 0 }, presence: true
  validates :protein, numericality: { greater_than_or_equal_to: 0 }, presence: true
  validates :salt, numericality: { greater_than_or_equal_to: 0 }, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0, only_integer: true }, presence: true
end
