class Registration < ActiveRecord::Base
  attr_accessible :person_id, :program_id, :participate

  belongs_to :person
  belongs_to :program

  validates :participate, :acceptance => true
end