class RemoveDateFromRegistration < ActiveRecord::Migration
  def up
  	remove_column :registrations, :registration_date
  end

  def down
  	add_column :registrations, :registration_date, :datetime
  end
end