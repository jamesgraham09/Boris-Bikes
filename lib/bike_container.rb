module BikeContainer

	DEFAULT_CAPACITY = 50

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end

	def bikes
		@bikes ||= []
	end

	def dock(bike)
		raise "Station is full" if full? 
		bikes << bike
	end

	def undock(bike)
		bikes.delete bike
	end

	def capacity
		@capacity
	end

	def bike_count
		bikes.count
	end

	def full?
		bike_count == capacity
	end

end

