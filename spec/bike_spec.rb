require_relative '../lib/bikes.rb'
require_relative '../lib/station.rb'
require_relative '../lib/container.rb'

describe Bike do
	it "should not be broken" do
		expect(Bike.new).not_to be_broken
	end

	it "can be broken" do
		bike =	Bike.new
		bike.break
		expect(bike).to be_broken
	end

	it "can be fixed" do
		bike = Bike.new
		bike.break
		bike.fix
		expect(bike).not_to be_broken 
	end

end

describe DockingStation do
	it "should be empty as a default" do
		bike = Bike.new
		station = DockingStation.new
		expect(station.bike_count).to eq(0)
	end

	it "should be able to accept (dock) a bike" do
		bike = Bike.new
		station = DockingStation.new
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end

	it "should be able to remove (undock) a bike" do
		bike = Bike.new
		station = DockingStation.new
		station.dock(bike)
		expect(station.bike_count).to eq(1)
		station.undock(bike)
		expect(station.bike_count).to eq(0)
	end

	it "should be full when it reaches capacity" do
		station = DockingStation.new
		station.dock(Bike.new) *20
		expect(station.full?).to eq(true)
	end
end
	
	# it "should be able to release (undock) a bike"
	# 	bike = Bike.new
	# 	station = DockingStation.new
	# 	station.dock(bike)
	# 	expect(@bikes.count).to eq(1)
	# 	station.undock(bike)
	# 	expect(@bikes.count).to eq(0)
	# end



# default bike is not broken
# bike can be broken
# bike can be fixed
# container should accept a bike
# container should undock a bike