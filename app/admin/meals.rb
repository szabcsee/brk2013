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
 end

 	collection_action :meal_report do 
	 	@meal_dates = ["2013-07-08","2013-07-09","2013-07-10","2013-07-11","2013-07-12","2013-07-13","2013-07-14"]
	    # This will render app/views/admin/meals/meal_report.html.erb
    end

end
