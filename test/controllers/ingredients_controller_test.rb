require 'test_helper'

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient = ingredients(:one)

  end

  test "should get index" do
    get ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_ingredient_url
    assert_response :success
  end

  test "should create ingredient" do
    assert_difference('Ingredient.count', 0) do
      post ingredients_url, params: { ingredient: { id:@ingredient.id, amount: @ingredient.amount, carbohydrates: @ingredient.carbohydrates, energy: @ingredient.energy, fat: @ingredient.fat, fibre: @ingredient.fibre, name: @ingredient.name, protein: @ingredient.protein, salt: @ingredient.salt, saturates: @ingredient.saturates, sugar: @ingredient.sugar } }
    end
    assert_response 200
  end

  test "should show ingredient" do
    get ingredient_url(@ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingredient_url(@ingredient)
    assert_response :success
  end

  test "should update ingredient" do
    patch ingredient_url(@ingredient), params: { ingredient: { amount: @ingredient.amount, carbohydrates: @ingredient.carbohydrates, energy: @ingredient.energy, fat: @ingredient.fat, fibre: @ingredient.fibre, name: @ingredient.name, protein: @ingredient.protein, salt: @ingredient.salt, saturates: @ingredient.saturates, sugar: @ingredient.sugar } }
    assert_redirected_to ingredient_url(@ingredient)
  end

  test "should destroy ingredient" do
    assert_difference('Ingredient.count', -1) do
      delete ingredient_url(@ingredient)
    end

    assert_redirected_to ingredients_url
  end
end
