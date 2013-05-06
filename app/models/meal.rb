class Meal < ActiveRecord::Base
  attr_accessible :food_type, :meal_date, :meal_type, :meal_id, :eater_type, :eater_id

  validate :food_type, :meal_date, :meal_type, :presence => true
  
  belongs_to :eater, :polymorphic => true

end
