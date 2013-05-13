class Meal < ActiveRecord::Base
  attr_accessible :food_type, :meal_date, :meal_type, :user_id

  validate :food_type, :meal_date, :meal_type, :user_id, :presence => true
  
  belongs_to :user

end
