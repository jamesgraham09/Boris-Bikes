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
		raise "Station is empty" if empty?
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

	def empty?
		bike_count == 0
	end

end

