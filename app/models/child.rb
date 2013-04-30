class Child < ActiveRecord::Base
  belongs_to :person
  attr_accessible :age, :child_care, :language, :name
end
