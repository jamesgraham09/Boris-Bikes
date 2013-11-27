class DockingStation
	def initialize
		@bikes = []
		@capacity = 20
	end

	def bikes
		@bikes
	end

	def dock(bike)
		@bikes << bike
	end

	def capacity
		@capacity
	end

	def undock(bike)
		@bikes.delete bike
	end

	def bike_count
		@bikes.count
	end

	def full?
		bike_count == @capacity
	end

end

