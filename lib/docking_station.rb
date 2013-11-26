# load BikeContainer
	require_relative 'bike_container'

class DockingStation

	include BikeContainer

	def initialize(options = {})
		# self.capacity is calling the capacity=() method defined in BikeContainer
		#capacity (second argument) is calling the capacity() method in BikeContainer
		self.capacity = options.fetch(:capacity, capacity)
	end
end
