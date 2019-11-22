require "application_system_test_case"

class IngredientsTest < ApplicationSystemTestCase
  setup do
    @ingredient = ingredients(:one)
  end

  test "visiting the index" do
    visit ingredients_url
    assert_selector "h1", text: "Ingredients"
  end

  test "creating a Ingredient" do
    visit ingredients_url
    click_on "New Ingredient"

    fill_in "Amount", with: @ingredient.amount
    fill_in "Carbohydrates", with: @ingredient.carbohydrates
    fill_in "Energy", with: @ingredient.energy
    fill_in "Fat", with: @ingredient.fat
    fill_in "Fibre", with: @ingredient.fibre
    fill_in "Meal", with: @ingredient.meal_id
    fill_in "Name", with: @ingredient.name
    fill_in "Protein", with: @ingredient.protein
    fill_in "Salt", with: @ingredient.salt
    fill_in "Saturates", with: @ingredient.saturates
    fill_in "Sugar", with: @ingredient.sugar
    click_on "Create Ingredient"

    assert_text "Ingredient was successfully created"
    click_on "Back"
  end

  test "updating a Ingredient" do
    visit ingredients_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @ingredient.amount
    fill_in "Carbohydrates", with: @ingredient.carbohydrates
    fill_in "Energy", with: @ingredient.energy
    fill_in "Fat", with: @ingredient.fat
    fill_in "Fibre", with: @ingredient.fibre
    fill_in "Meal", with: @ingredient.meal_id
    fill_in "Name", with: @ingredient.name
    fill_in "Protein", with: @ingredient.protein
    fill_in "Salt", with: @ingredient.salt
    fill_in "Saturates", with: @ingredient.saturates
    fill_in "Sugar", with: @ingredient.sugar
    click_on "Update Ingredient"

    assert_text "Ingredient was successfully updated"
    click_on "Back"
  end

  test "destroying a Ingredient" do
    visit ingredients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ingredient was successfully destroyed"
  end
end
