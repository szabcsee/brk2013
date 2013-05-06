class Child < ActiveRecord::Base
  belongs_to :person
  has_many :meals, :as => :eater
  attr_accessible :age, :child_care, :language, :name, :eater_id, :eater_type, :meals_attributes

  accepts_nested_attributes_for :meals
end
