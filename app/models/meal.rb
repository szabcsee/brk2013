class Meal < ActiveRecord::Base
  belongs_to :user
  attr_accessible :fifth_day, :fifth_day_meal_type, :first_day, :first_day_meal_type, :food_type, :fourth_day, :fourth_day_meal_type, :second_day, :second_day_meal_type, :seventh_day, :seventh_day_meal_type, :sixth_day, :sixth_day_meal_type, :third_day, :third_day_meal_type
end
