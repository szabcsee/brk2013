ActiveAdmin.register Child do

belongs_to :user

index do
	column :age
	column :child_care
	column :language
	column :name
	column :user do |parent|
		parent.id
	end
end

end
