require_relative 'bike_container.rb'

class Van
	
	include BikeContainer

	def load_van(from)
		from.bikes.dup.each do |bike|
			from.undock(bike)
			self.bikes << bike
		end
	end	

	# def unload_van(location)
	# end

end