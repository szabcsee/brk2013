class Meal < ActiveRecord::Base
  attr_accessible :food_type, :meal_date, :meal_type, :meal_id, :person_id

  validate :food_type, :meal_date, :meal_type, :person_id, :presence => true
  
  belongs_to :person

end
