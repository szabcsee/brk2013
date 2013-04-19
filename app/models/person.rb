class Person < ActiveRecord::Base
  attr_accessible :child_age, :child_care, :child_language, :email_address, :first_name, :home_country, :payment, :phone_number, :price_category, :price_method, :reference_number, :second_name

  validate :first_name, :second_name, :firsthome_country_name, :email_address, :child_care, :payment, :price_method, :reference_number, :presence => true

  has_many :meals
  has_many :registrations
  has_many :programs, :through => :registrations
end