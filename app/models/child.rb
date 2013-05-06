class Child < ActiveRecord::Base
  belongs_to :person
  has_many :meals, :as => :eater
  attr_accessible :age, :child_care, :language, :name, :meals_attributes

  accepts_nested_attributes_for :meals, :allow_destroy => true, :reject_if => proc { |attributes| attributes['meal_type'].blank? }
end
