ActiveAdmin.register Payment do
   
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
	   f.input :date
	   f.input :amount
	   f.input :comment
	   f.input :user_id, :as => :select, :collection => User.joins('LEFT OUTER JOIN payments ON payments.user_id = users.id').map{|u| [u.reference_number, u.id]} 		
	end
  	f.buttons
  end

end