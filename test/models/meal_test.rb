require 'test_helper'

class MealTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should show empty meal can't be saved" do
    meal = Meal.new

    meal.save
    refute meal.valid?
  end

  test "should show valid meal can be saved" do
    meal = Meal.new

    meal.name = "Meal1"
    meal.description = "Tasty test meal"

    meal.save
    assert meal.valid?
  end

  test "should show that a duplicated meal name can't be saved" do
    meal1 = Meal.new
    meal1.name = "Meal1"
    meal1.description = "Tasty test meal 1"
    meal1.save
    assert meal1.valid?

    meal2 = Meal.new
    meal2.name = "Meal1"
    meal2.description = "Tasty test meal 2"
    meal2.save
    refute meal2.valid?
  end

end
