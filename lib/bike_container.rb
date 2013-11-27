module BikeContainer

	def bikes
		@bikes
	end

	def dock(bike)
		@bikes << bike
	end

	def undock(bike)
		@bikes.delete bike
	end

	def capacity
		@capacity
	end

	def bike_count
		@bikes.count
	end

	def full?
		bike_count == @capacity
	end

end

