class Registration < ActiveRecord::Base
  attr_accessible :user_id, :program_id, :participate

  belongs_to :user
  belongs_to :program

end