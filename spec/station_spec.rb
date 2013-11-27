require_relative '../lib/station.rb'
require_relative '../lib/bikes.rb'

describe Station do
	it "should be empty as a default" do
		bike = Bike.new
		station = Station.new
		expect(station.bike_count).to eq(0)
	end

	it "should be able to accept (dock) a bike" do
		bike = Bike.new
		station = Station.new
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end

	it "should be able to remove (undock) a bike" do
		bike = Bike.new
		station = Station.new
		station.dock(bike)
		expect(station.bike_count).to eq(1)
		station.undock(bike)
		expect(station.bike_count).to eq(0)
	end

	it "shouldn't be full when it doesn't reach capacity" do
		station = Station.new({:capacity => 50})
		20.times {station.dock(Bike.new)}
		expect(station.full?).to eq(false)
	end

		it "should be full when it reaches capacity" do
		station = Station.new({:capacity => 10})
		10.times {station.dock(Bike.new)}
		expect(station.full?).to eq(true)
	end

	it "should have a default capacity above zero" do
		station = Station.new()
		expect(station.capacity).to be > 0
	end
end