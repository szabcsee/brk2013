require 'test_helper'

class MealsControllerTest < ActionController::TestCase
  setup do
    @meal = meals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meal" do
    assert_difference('Meal.count') do
      post :create, meal: { fifth_day: @meal.fifth_day, fifth_day_meal_type: @meal.fifth_day_meal_type, first_day: @meal.first_day, first_day_meal_type: @meal.first_day_meal_type, food_type: @meal.food_type, fourth_day: @meal.fourth_day, fourth_day_meal_type: @meal.fourth_day_meal_type, second_day: @meal.second_day, second_day_meal_type: @meal.second_day_meal_type, seventh_day: @meal.seventh_day, seventh_day_meal_type: @meal.seventh_day_meal_type, sixth_day: @meal.sixth_day, sixth_day_meal_type: @meal.sixth_day_meal_type, third_day: @meal.third_day, third_day_meal_type: @meal.third_day_meal_type }
    end

    assert_redirected_to meal_path(assigns(:meal))
  end

  test "should show meal" do
    get :show, id: @meal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meal
    assert_response :success
  end

  test "should update meal" do
    put :update, id: @meal, meal: { fifth_day: @meal.fifth_day, fifth_day_meal_type: @meal.fifth_day_meal_type, first_day: @meal.first_day, first_day_meal_type: @meal.first_day_meal_type, food_type: @meal.food_type, fourth_day: @meal.fourth_day, fourth_day_meal_type: @meal.fourth_day_meal_type, second_day: @meal.second_day, second_day_meal_type: @meal.second_day_meal_type, seventh_day: @meal.seventh_day, seventh_day_meal_type: @meal.seventh_day_meal_type, sixth_day: @meal.sixth_day, sixth_day_meal_type: @meal.sixth_day_meal_type, third_day: @meal.third_day, third_day_meal_type: @meal.third_day_meal_type }
    assert_redirected_to meal_path(assigns(:meal))
  end

  test "should destroy meal" do
    assert_difference('Meal.count', -1) do
      delete :destroy, id: @meal
    end

    assert_redirected_to meals_path
  end
end
