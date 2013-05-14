class User < ActiveRecord::Base

  has_many :meals
  has_many :registrations, :dependent => :destroy
  has_many :programs, :through => :registrations
  has_many :children
  has_many :travels

  attr_accessible :email_address, :first_name, :home_country, :payment, :phone_number, :price_category, :price_method, :reference_number, :second_name, :meals_attributes, :registrations_attributes, :children_attributes, :travels_attributes
  
  validate :first_name, :second_name, :home_country, :email_address, :payment, :price_method, :presence => true
  
  accepts_nested_attributes_for :meals, :allow_destroy => true
  accepts_nested_attributes_for :registrations, :reject_if => proc { |attributes| attributes[:participate] == '0' }, :allow_destroy => true
  accepts_nested_attributes_for :travels, :allow_destroy => true
  accepts_nested_attributes_for :children, :allow_destroy => true
  

  def reference_it
  	self.reference_number = self.first_name[0,1].to_s
  	self.reference_number += self.second_name[0,1].to_s
  	def random_alphanumeric(size=16)
  		chars = ('0'..'9').to_a + ('A'..'Z').to_a
  		(0...size).collect { chars[Kernel.rand(chars.length)] }.join
  	end
	  self.reference_number += random_alphanumeric(6)
  end



        
        

def calculate_price 
  case self.programs.size   
    when 9
      case self.price_method
        when 'course'
          case self.price_category
           when 'full'
            self.payment = '35000'
           when 'support'
            self.payment = '30000'
           when 'escort'
            self.payment = '5000'
           when 'discount'
            self.payment = '17500'
          end
        else
          case self.price_category
           when 'full'
            self.payment = '30000'
           when 'support'
            self.payment = '30000'
           when 'escort'
            self.payment = '5000'
           when 'discount'
            self.payment = '17500'
          end
      end        
    else
      case self.price_category
        when 'full'
          self.programs.each do |program|
            self.payment.to_i += program.price_full.to_i
          end
        else
          self.programs.each do |program|
             self.payment.to_i += program.price_member.to_i
          end
      end
  end
  self.payment = self.payment.to_s   
end

  before_save :reference_it
  before_save :calculate_price
end