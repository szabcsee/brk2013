ActiveAdmin.register Meal do
 filter :user, :collection => proc {(User.all).map{|c| [c.reference_number, c.id]}}
 
 belongs_to :user

 index do
 	column :first_day
 	column :first_day_meal_type
 	column :second_day
 	column :second_day_meal_type
 	column :third_day
 	column :third_day_meal_type
 	column :fourth_day
 	column :fourth_day_meal_type
 	column :fifth_day
 	column :fifth_day_meal_type
 	column :sixth_day
 	column :sixth_day_meal_type
 	column :seventh_day
 	column :seventh_day_meal_type
 	column :food_type
 	default_actions
 end

 form do |f|
   @meal_dates = ["2013-07-08","2013-07-09","2013-07-10","2013-07-11","2013-07-12","2013-07-13","2013-07-14"]
   f.inputs "Meal Details" do
 	f.input :first_day, :as => :hidden, :value => @meal_dates[0]
 	f.input :first_day_meal_type, :as => :select, :collection => [['1'],['3'],['0']], :label => @meal_dates[0]
 	f.input :second_day, :as => :hidden,  :value => @meal_dates[1]
 	f.input :second_day_meal_type, :as => :select, :collection => [['1'],['3'],['0']], :label => @meal_dates[1]
 	f.input :third_day, :as => :hidden,  :value => @meal_dates[2]
 	f.input :third_day_meal_type, :as => :select, :collection => [['1'],['3'],['0']], :label => @meal_dates[2]
 	f.input :fourth_day, :as => :hidden,  :value => @meal_dates[3]
 	f.input :fourth_day_meal_type, :as => :select, :collection => [['1'],['3'],['0']], :label => @meal_dates[3]
 	f.input :fifth_day, :as => :hidden,  :value => @meal_dates[4]
 	f.input :fifth_day_meal_type, :as => :select, :collection => [['1'],['3'],['0']], :label => @meal_dates[4]
 	f.input :sixth_day, :as => :hidden,  :value => @meal_dates[5]
 	f.input :sixth_day_meal_type, :as => :select, :collection => [['1'],['3'],['0']], :label => @meal_dates[5]
 	f.input :seventh_day, :as => :hidden,  :value => @meal_dates[6]
 	f.input :seventh_day_meal_type, :as => :select, :collection => [['1'],['3'],['0']], :label => @meal_dates[6]
 	f.input :food_type, :as => :select, :collection => [['meat'],['vegetarian']]
 	f.buttons
   end
 end

end
