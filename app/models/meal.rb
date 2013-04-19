class Meal < ActiveRecord::Base
  attr_accessible :food_type, :meal_date, :meal_type

  validate :food_type, :meal_date, :meal_type, :presence => true
  
  belongs_to :person

end
