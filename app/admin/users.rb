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
    default_actions
  end

  

end
