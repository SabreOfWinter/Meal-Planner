require "application_system_test_case"

class PlanMealsTest < ApplicationSystemTestCase
  setup do
    @plan_meal = plan_meals(:one)
  end

  test "visiting the index" do
    visit plan_meals_url
    assert_selector "h1", text: "Plan Meals"
  end

  test "creating a Plan meal" do
    visit plan_meals_url
    click_on "New Plan Meal"

    fill_in "Dayplan", with: @plan_meal.dayplan_id
    fill_in "Meal", with: @plan_meal.meal_id
    click_on "Create Plan meal"

    assert_text "Plan meal was successfully created"
    click_on "Back"
  end

  test "updating a Plan meal" do
    visit plan_meals_url
    click_on "Edit", match: :first

    fill_in "Dayplan", with: @plan_meal.dayplan_id
    fill_in "Meal", with: @plan_meal.meal_id
    click_on "Update Plan meal"

    assert_text "Plan meal was successfully updated"
    click_on "Back"
  end

  test "destroying a Plan meal" do
    visit plan_meals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plan meal was successfully destroyed"
  end
end
