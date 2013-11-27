require_relative '../lib/bikes.rb'
require_relative '../lib/station.rb'
require_relative '../lib/container.rb'

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