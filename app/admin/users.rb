ActiveAdmin.register User do

  index do
    column :first_name
    column :second_name
    column :email_address
    column :home_country 
    column :price_category
    column :price_method
    column :reference_number
    column :created_at
    column "Meals" do |user|
        link_to('Meals', admin_user_meals_path(user))
    end
    column "Travels" do |user|
        link_to('Travels', admin_user_travels_path(user))
    end
    column "Children" do |user|
        link_to('Children', admin_user_children_path(user))
    end
    column "Payments" do |user|
        link_to('Payments', admin_user_payments_path(user))
    end
    default_actions    
  end

  show do
    attributes_table do
        row :first_name
        row :second_name
        row :email_address
        row :home_country 
        row :price_category
        row :price_method
    end

    if user.meals && user.meals.count > 0
        panel "Meals" do
          table_for user.meals do
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
    end

    if user.travels && user.travels.count > 0
        panel "Travel" do
          table_for user.travels do
            column :arrival
            column :arrival_seats
            column :bus_trip
            column :departure
            column :departure_seats
            column :flight_date
            column :flight_number
          end
        end
    end

    if user.children && user.children.count > 0
        panel "Children" do
          table_for user.children do
           column :name
            column :age
            column :child_care
            column :language
          end
        end
    end

    if user.payments && user.payments.count > 0
        panel "Payment" do
          table_for user.payments do
           column :date
            column :amount
            column :comment
          end
        end
    end

  end

  collection_action :meal_report do 
        @day_filter = params[:day_filter]
        @meal_dates = ["2013-07-08","2013-07-09","2013-07-10","2013-07-11","2013-07-12","2013-07-13","2013-07-14"]
        @programs = Program.all
        # This will render app/views/admin/meals/meal_report.html.erb
  end

  collection_action :travel_report do
            @flyers = Travel.where("flight_number <> ''" )
            @doggers = Travel.where('arrival_seats > 0' || 'departure_seats > 0')
  end

  collection_action :child_report do
            @children = Child.all
  end
end
