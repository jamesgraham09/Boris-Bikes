require_relative 'bike_container.rb'

class Station
	
	include BikeContainer

	def available_bikes
		@bikes.reject {|bike| bike.broken?}
	end

end

