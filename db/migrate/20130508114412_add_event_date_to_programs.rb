class AddEventDateToPrograms < ActiveRecord::Migration
  def up
  	add_column :programs, :event_date, :datetime
  end

  def down
  	remove_column :programs, :event_date
  end
end
