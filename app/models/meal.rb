class Meal < ApplicationRecord
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\D/, message: "only accepts letters"}
  validates :description, allow_blank: true, format: { with: /\A[a-zA-Z]+\D/, message: "only accepts letters"}

  validates :user, presence: true, numericality: {greater_than: 0}

  has_many :meal_ingredients, dependent: :destroy

  scope :public_meals, -> {where(public: true) }
  scope :user_meals, -> (user) {where(user: user)}
  scope :user_and_public_meals, -> (user) {where(public:true).or(where(user: user))}
end
