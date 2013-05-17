class Program < ActiveRecord::Base
  attr_accessible :exchange_rate, :price_discount, :price_full, :price_full_eur, :price_discount_eur, :program_name_en, :program_name_hu, :event_date

  has_many :registrations
  has_many :users, :through => :registrations
end
