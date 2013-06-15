ActiveAdmin.register Meal do
 filter :user, :collection => proc {(User.all).map{|c| [c.reference_number, c.id]}}

 collection_action :meal_report do 

 	@meal_dates = ["2013-07-08","2013-07-09","2013-07-10","2013-07-11","2013-07-12","2013-07-13","2013-07-14"]
    # This will render app/views/admin/meals/meal_report.html.erb
  end

end
