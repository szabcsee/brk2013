class AddBooleanToRegistration < ActiveRecord::Migration
  def up
  	add_column :registrations, :participate, :boolean
  end

  def down
  	remove_column :registrations, :participate
  end
end
