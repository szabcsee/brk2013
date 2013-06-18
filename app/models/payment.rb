class Payment < ActiveRecord::Base
  belongs_to :user
  attr_accessible :comment, :date, :amount, :user_id, :user_attributes

end
