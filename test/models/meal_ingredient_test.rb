require 'test_helper'

class MealIngredientTest < ActiveSupport::TestCase
  setup do
    @meal = Meal.new()

    @meal.name = "MealOne"
    @meal.description = ""
    @meal.recipe = ""
    @meal.public = false
    @meal.user = 1

    @meal.save

    @ingredient = Ingredient.new()

    @ingredient.id = 1
    @ingredient.name = "Carrot"
    @ingredient.amount = 1
    @ingredient.energy = 1.0
    @ingredient.fat = 1.0
    @ingredient.saturates = 1.0
    @ingredient.carbohydrates = 1.0
    @ingredient.sugar = 1.0
    @ingredient.fibre = 1.0
    @ingredient.protein = 1.0
    @ingredient.salt = 1.0

    @ingredient.save
  end

  test "should save valid meal ingredient" do
    meal_ingredient = MealIngredient.new()

    meal_ingredient.ingredient = @ingredient
    meal_ingredient.meal = @meal
    meal_ingredient.amount = 1

    meal_ingredient.save

    assert meal_ingredient.valid?
  end

  test "should not save invalid amount" do
    meal_ingredient = MealIngredient.new()

    meal_ingredient.ingredient = @ingredient
    meal_ingredient.meal = @meal
    meal_ingredient.amount = 0

    meal_ingredient.save

    refute meal_ingredient.valid?
  end

  test "should not save if ingredient is null" do
    meal_ingredient = MealIngredient.new()

    meal_ingredient.ingredient
    meal_ingredient.meal = @meal
    meal_ingredient.amount = 1

    meal_ingredient.save

    refute meal_ingredient.valid?
  end

  test "should not save if meal is null" do
    meal_ingredient = MealIngredient.new()

    meal_ingredient.ingredient = @ingredient
    meal_ingredient.meal
    meal_ingredient.amount = 1

    meal_ingredient.save

    refute meal_ingredient.valid?
  end
end
