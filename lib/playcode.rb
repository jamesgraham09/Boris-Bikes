require_relative '../lib/bikes.rb'
require_relative '../lib/station.rb'
require_relative '../lib/bike_container.rb'

station = Station.new
station.dock(Bike.new("penny farthing"))
station.dock(Bike.new)
station.dock(Bike.new("live strong"))

puts "There are currently #{station.bike_count} bikes here"

bike = station.bikes.select { |bike| bike.name == "live strong"}.first
puts bike.colour
bike.respray("yellow")
puts bike.colour

station.bikes.each { |bike| puts "#{bike.name}, #{bike.broken}, #{bike.colour}"}
puts station.bikes.inspect

puts "XXXX"

station = Station.new
20.times {station.dock(Bike.new)}
puts station.bike_count
expect(station.full?).to eq(true)