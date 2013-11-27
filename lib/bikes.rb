class Bike

	attr_accessor :name
	attr_accessor :broken
	attr_accessor :name


	def initialize(name="standard")
		@colour = "pink"
		@broken = false
		@name = name
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
