class Registration < ActiveRecord::Base
  attr_accessible :registration_date, :person_id, :id, :program_id

  belongs_to :person
  belongs_to :program

  def registration_autofill
     self.registration_date = DateTime.now
  end

  before_save :registration_autofill
end