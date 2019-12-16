require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  test "should save valid ingredient" do
     ingredient = Ingredient.new()

     ingredient.id = 1
     ingredient.name = "Carrot"
     ingredient.amount = 1
     ingredient.energy = 1.0
     ingredient.fat = 1.0
     ingredient.saturates = 1.0
     ingredient.carbohydrates = 1.0
     ingredient.sugar = 1.0
     ingredient.fibre = 1.0
     ingredient.protein = 1.0
     ingredient.salt = 1.0

     ingredient.save

     assert ingredient.valid?
  end

  test "should not save ingredient if name is duplicate" do
    ingredient = Ingredient.new()

    ingredient.id = 1
    ingredient.name = "Carrot"
    ingredient.amount = 1
    ingredient.energy = 1.0
    ingredient.fat = 1.0
    ingredient.saturates = 1.0
    ingredient.carbohydrates = 1.0
    ingredient.sugar = 1.0
    ingredient.fibre = 1.0
    ingredient.protein = 1.0
    ingredient.salt = 1.0

    ingredient.save

    ingredient2 = Ingredient.new()

    ingredient2.id = 1
    ingredient2.name = "Carrot"
    ingredient2.amount = 1
    ingredient2.energy = 1.0
    ingredient2.fat = 1.0
    ingredient2.saturates = 1.0
    ingredient2.carbohydrates = 1.0
    ingredient2.sugar = 1.0
    ingredient2.fibre = 1.0
    ingredient2.protein = 1.0
    ingredient2.salt = 1.0

    ingredient2.save

    refute ingredient2.valid?
  end

  test "should not save ingredient if name is empty" do
     ingredient = Ingredient.new()

     ingredient.id = 1
     ingredient.name
     ingredient.amount = 1
     ingredient.energy = 1.0
     ingredient.fat = 1.0
     ingredient.saturates = 1.0
     ingredient.carbohydrates = 1.0
     ingredient.sugar = 1.0
     ingredient.fibre = 1.0
     ingredient.protein = 1.0
     ingredient.salt = 1.0

     ingredient.save

     refute ingredient.valid?
  end

  test "should not save ingredient if amount is invalid" do
     ingredient = Ingredient.new()

     ingredient.id = 1
     ingredient.name = "Carrot"
     ingredient.amount = 0
     ingredient.energy = 1.0
     ingredient.fat = 1.0
     ingredient.saturates = 1.0
     ingredient.carbohydrates = 1.0
     ingredient.sugar = 1.0
     ingredient.fibre = 1.0
     ingredient.protein = 1.0
     ingredient.salt = 1.0

     ingredient.save

     refute ingredient.valid?
  end

  test "should not save ingredient if energy is invalid" do
     ingredient = Ingredient.new()

     ingredient.id = 1
     ingredient.name = "Carrot"
     ingredient.amount = 1
     ingredient.energy = 0
     ingredient.fat = 1.0
     ingredient.saturates = 1.0
     ingredient.carbohydrates = 1.0
     ingredient.sugar = 1.0
     ingredient.fibre = 1.0
     ingredient.protein = 1.0
     ingredient.salt = 1.0

     ingredient.save

     refute ingredient.valid?
  end

  test "should not save ingredient if fat is invalid" do
     ingredient = Ingredient.new()

     ingredient.id = 1
     ingredient.name = "Carrot"
     ingredient.amount = 1
     ingredient.energy = 1.0
     ingredient.fat = 0
     ingredient.saturates = 1.0
     ingredient.carbohydrates = 1.0
     ingredient.sugar = 1.0
     ingredient.fibre = 1.0
     ingredient.protein = 1.0
     ingredient.salt = 1.0

     ingredient.save

     refute ingredient.valid?
  end

  test "should not save ingredient if saturates is invalid" do
     ingredient = Ingredient.new()

     ingredient.id = 1
     ingredient.name = "Carrot"
     ingredient.amount = 1
     ingredient.energy = 1.0
     ingredient.fat = 1.0
     ingredient.saturates = 0
     ingredient.carbohydrates = 1.0
     ingredient.sugar = 1.0
     ingredient.fibre = 1.0
     ingredient.protein = 1.0
     ingredient.salt = 1.0

     ingredient.save

     refute ingredient.valid?
  end

  test "should not save ingredient if carbohydrates is invalid" do
     ingredient = Ingredient.new()

     ingredient.id = 1
     ingredient.name = "Carrot"
     ingredient.amount = 1
     ingredient.energy = 1.0
     ingredient.fat = 1.0
     ingredient.saturates = 1.0
     ingredient.carbohydrates = 0
     ingredient.sugar = 1.0
     ingredient.fibre = 1.0
     ingredient.protein = 1.0
     ingredient.salt = 1.0

     ingredient.save

     refute ingredient.valid?
  end

  test "should not save ingredient if sugar is invalid" do
     ingredient = Ingredient.new()

     ingredient.id = 1
     ingredient.name = "Carrot"
     ingredient.amount = 1
     ingredient.energy = 1.0
     ingredient.fat = 1.0
     ingredient.saturates = 1.0
     ingredient.carbohydrates = 1.0
     ingredient.sugar = 0
     ingredient.fibre = 1.0
     ingredient.protein = 1.0
     ingredient.salt = 1.0

     ingredient.save

     refute ingredient.valid?
  end

  test "should not save ingredient if fibre is invalid" do
     ingredient = Ingredient.new()

     ingredient.id = 1
     ingredient.name = "Carrot"
     ingredient.amount = 1
     ingredient.energy = 1.0
     ingredient.fat = 1.0
     ingredient.saturates = 1.0
     ingredient.carbohydrates = 1.0
     ingredient.sugar = 1.0
     ingredient.fibre = 0
     ingredient.protein = 1.0
     ingredient.salt = 1.0

     ingredient.save

     refute ingredient.valid?
  end

  test "should not save ingredient if protein is invalid" do
     ingredient = Ingredient.new()

     ingredient.id = 1
     ingredient.name = "Carrot"
     ingredient.amount = 1
     ingredient.energy = 1.0
     ingredient.fat = 1.0
     ingredient.saturates = 1.0
     ingredient.carbohydrates = 1.0
     ingredient.sugar = 1.0
     ingredient.fibre = 1.0
     ingredient.protein = 0
     ingredient.salt = 1.0

     ingredient.save

     refute ingredient.valid?
  end

  test "should not save ingredient if salt is invalid" do
     ingredient = Ingredient.new()

     ingredient.id = 1
     ingredient.name = "Carrot"
     ingredient.amount = 1
     ingredient.energy = 1.0
     ingredient.fat = 1.0
     ingredient.saturates = 1.0
     ingredient.carbohydrates = 1.0
     ingredient.sugar = 1.0
     ingredient.fibre = 1.0
     ingredient.protein = 1.0
     ingredient.salt = 0

     ingredient.save

     refute ingredient.valid?
  end
end
