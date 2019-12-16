require 'test_helper'

class MealTest < ActiveSupport::TestCase
  test "should save valid meal" do
    meal = Meal.new()

    meal.name = "MealOne"
    meal.description = ""
    meal.recipe = ""
    meal.public = false
    meal.user = 1

    meal.save

    assert meal.valid?
  end

  test "should not save meal with invalid name" do
    meal = Meal.new()

    meal.name = 23
    meal.description = ""
    meal.recipe = ""
    meal.public = false
    meal.user = 1

    meal.save

    refute meal.valid?
  end

  test "should not save meal with invalid description" do
    meal = Meal.new()

    meal.name = "MealOne"
    meal.description = 23
    meal.recipe = ""
    meal.public = false
    meal.user = 1

    meal.save

    refute meal.valid?
  end

  test "should not save meal with invalid user" do
    meal = Meal.new()

    meal.name = "MealOne"
    meal.description = ""
    meal.recipe = ""
    meal.public = false
    meal.user = "user"

    meal.save

    refute meal.valid?
  end

end
