require_relative 'bike_container.rb'

class Station
	
	include BikeContainer

	DEFAULT_CAPACITY = 50

	def initialize(options = {})
		@bikes = []
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end
	
end
