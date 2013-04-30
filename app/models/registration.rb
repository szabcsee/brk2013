class Registration < ActiveRecord::Base
  attr_accessible :registration_date, :person_id, :id, :program_id

  belongs_to :person
  belongs_to :program
end