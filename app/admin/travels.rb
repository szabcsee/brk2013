ActiveAdmin.register Travel do

  belongs_to :user

  collection_action :travel_report do
			@flyers = Travel.where("flight_number <> ''" )
			@doggers = Travel.where('arrival_seats > 0' || 'departure_seats > 0')
  end

end
