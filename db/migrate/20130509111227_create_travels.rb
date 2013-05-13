class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string :arrival
      t.boolean :bus_trip
      t.integer :arrival_seats
      t.integer :departure_seats
      t.string :departure
      t.string :flight_number
      t.datetime :flight_date
      t.references :user

      t.timestamps
    end
  end
end
