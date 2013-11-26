class DockingStation
	DEFAULT_CAPACITY = 10

	def initialize(options = {})
		@capacity = options.fetch(:capacity) || DEFAULT_CAPACITY
		@bikes = []
	end

	def bike_count
		@bikes.count
	end

	def dock(bike)
		# raise an exception if at capacity
		raise "station is full" if full?
		@bikes << bike
	end

	def undock(bike)
		@bikes.delete(bike)
	end

	def full?
		bike_count == @capacity
	end

	def available_bikes
		@bikes.reject {|bike| bike.broken?}
	end

end