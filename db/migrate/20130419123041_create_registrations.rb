class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.datetime :registration_date

      t.timestamps
    end
  end
end
