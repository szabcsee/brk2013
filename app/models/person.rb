class Person < ActiveRecord::Base

  attr_accessible :child_age, :child_care, :child_language, :email_address, :first_name, :home_country, :payment, :phone_number, :price_category, :price_method, :reference_number, :second_name, :meals_attributes, :registrations_attributes

  validate :first_name, :second_name, :home_country, :email_address, :child_care, :payment, :price_method, :presence => true

  has_many :meals
  has_many :registrations, :dependent => :destroy
  has_many :programs, :through => :registrations
  accepts_nested_attributes_for :meals
  accepts_nested_attributes_for :registrations
  

  def reference_it
  	self.reference_number = self.first_name[0,1].to_s
  	self.reference_number += self.second_name[0,1].to_s
	def random_alphanumeric(size=16)
		chars = ('0'..'9').to_a + ('A'..'Z').to_a
		(0...size).collect { chars[Kernel.rand(chars.length)] }.join
	end
	self.reference_number += random_alphanumeric(6)
  end

  before_save :reference_it
end