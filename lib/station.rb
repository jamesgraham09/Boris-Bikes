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

	def undock(bike)
		@bikes.delete bike
	end

	def bike_count
		@bikes.count
	end

	def full
		@bikes.count = @capacity
	end

end


require_relative '../lib/bikes.rb'


station = DockingStation.new
station.dock(Bike.new("penny farthing"))
station.dock(Bike.new)
station.dock(Bike.new("live strong"))

puts "There are currently #{station.bike_count} bikes here"

bike = station.bikes.select { |bike| bike.name == "live strong"}.first
puts bike.colour
bike.respray("yellow")
puts bike.colour

station.bikes.each { |bike| puts "#{bike.name}, #{bike.broken}, #{bike.colour}"}