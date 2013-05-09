class Travel < ActiveRecord::Base
  belongs_to :person
  attr_accessible :arrival, :arrival_seats, :bus_trip, :departure, :departure_seats, :flight_date, :flight_number, :person_id
end
