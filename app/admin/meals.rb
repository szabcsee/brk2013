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

end
