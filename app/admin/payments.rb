ActiveAdmin.register Payment do
  belongs_to :user

  index do
    column :date
    column :amount
    column :comment
    column "User" do |p|
  		usr = User.find(p.user_id)
  		display_name = usr.first_name+' '+usr.second_name
  		display_name
	  end
	  column "Reference Number" do |p|
  		usr = User.find(p.user_id)
  		link_to usr.reference_number, admin_user_path(p.user_id)
 	  end
    column :created_at
    default_actions
  end

  form do |f|
  	f.inputs "Payment Details" do
	   f.input :date, :as => :hidden, :value => DateTime.now.to_date
	   f.input :amount
	   f.input :comment, :as => :select, :collection => [['bank transfer'],['cash']]
  	 f.buttons
    end
  end
end