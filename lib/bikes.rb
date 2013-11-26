class Bike
	def initialize
		@colour = "pink"
		@broken = false
	end 

	def broken?
		@broken
	end

	def break
		@broken = true
	end

	def fix
		@broken = false
	end

	def respray(colour)
		@colour = colour
	end
	require_relative 'bikes.rb'
end
