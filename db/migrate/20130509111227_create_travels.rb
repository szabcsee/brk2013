class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.datetime :arrival
      t.boolean :bus_trip
      t.integer :arrival_seats
      t.integer :departure_seats
      t.datetime :departure
      t.string :flight_number
      t.datetime :flight_date
      t.references :person

      t.timestamps
    end
  end
end
