require 'test_helper'

class MealIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meal = meals(:one)
    @ingredient = ingredients(:one)
    @test_user = users(:one)
    @meal_ingredient = MealIngredient.new()
    @meal_ingredient.ingredient = @ingredient
    @meal_ingredient.meal = @meal
    @meal_ingredient.amount = 1
    @meal_ingredient.user_id = @test_user.id
    @meal_ingredient.save

    sign_in @test_user
  end



  test "should get new" do
    get new_meal_ingredient_url
    assert_response :success
  end

  test "should create meal_ingredient" do
    assert_difference('MealIngredient.count') do
      post meal_ingredients_url, params: { meal_ingredient: { amount: @meal_ingredient.amount, ingredient_id: @meal_ingredient.ingredient_id, meal_id: @meal_ingredient.meal_id, user_id: @meal_ingredient.user_id } }
    end

    assert_redirected_to meal_ingredient_url(MealIngredient.last)
  end

  test "should show meal_ingredient" do
    get meal_ingredient_url(@meal_ingredient)
    assert_response :redirect
  end

  test "should not show meal_ingredient and redirect" do
    get meal_ingredient_url(@meal_ingredient)
    assert_redirected_to :meal_ingredients
  end

  test "should get edit" do
    get edit_meal_ingredient_url(@meal_ingredient)
    assert_response :success
  end

  test "should update meal_ingredient" do
    patch meal_ingredient_url(@meal_ingredient), params: { meal_ingredient: { amount: @meal_ingredient.amount, ingredient_id: @meal_ingredient.ingredient_id, meal_id: @meal_ingredient.meal_id, user_id: @meal_ingredient.user_id } }
    assert_redirected_to meal_ingredient_url(@meal_ingredient)
  end

  test "should destroy meal_ingredient" do
    assert_difference('MealIngredient.count', -1) do
      delete meal_ingredient_url(@meal_ingredient)
    end

    assert_redirected_to meal_ingredients_url
  end
end
