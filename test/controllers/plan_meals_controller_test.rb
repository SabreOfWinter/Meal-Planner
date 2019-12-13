require 'test_helper'

class PlanMealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plan_meal = plan_meals(:one)
  end

  test "should get index" do
    get plan_meals_url
    assert_response :success
  end

  test "should get new" do
    get new_plan_meal_url
    assert_response :success
  end

  test "should create plan_meal" do
    assert_difference('PlanMeal.count') do
      post plan_meals_url, params: { plan_meal: { dayplan_id: @plan_meal.dayplan_id, meal_id: @plan_meal.meal_id } }
    end

    assert_redirected_to plan_meal_url(PlanMeal.last)
  end

  test "should show plan_meal" do
    get plan_meal_url(@plan_meal)
    assert_response :success
  end

  test "should get edit" do
    get edit_plan_meal_url(@plan_meal)
    assert_response :success
  end

  test "should update plan_meal" do
    patch plan_meal_url(@plan_meal), params: { plan_meal: { dayplan_id: @plan_meal.dayplan_id, meal_id: @plan_meal.meal_id } }
    assert_redirected_to plan_meal_url(@plan_meal)
  end

  test "should destroy plan_meal" do
    assert_difference('PlanMeal.count', -1) do
      delete plan_meal_url(@plan_meal)
    end

    assert_redirected_to plan_meals_url
  end
end
