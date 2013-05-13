class Travel < ActiveRecord::Base
  belongs_to :user
  attr_accessible :arrival, :arrival_seats, :bus_trip, :departure, :departure_seats, :flight_date, :flight_number, :user_id
end
