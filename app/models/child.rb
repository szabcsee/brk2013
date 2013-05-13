class Child < ActiveRecord::Base
  belongs_to :user
  attr_accessible :age, :child_care, :language, :name, :user_id
  validate :age, :child_care, :language, :name, :presence => true
end
