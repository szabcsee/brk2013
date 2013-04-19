class Registration < ActiveRecord::Base
  attr_accessible :registration_date

  belongs_to :person
  belongs_to :program
end
