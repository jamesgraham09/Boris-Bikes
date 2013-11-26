# This is a description of the tests for the Class Bike

require_relative "../lib/bike"
require_relative "../lib/docking_station"

describe Bike do
	
	let(:bike) {Bike.new}
	# let() is an rspec helper that calls the block before every test

	# Defining a specific feature (behaviour) that we expect to be present
	it "should not be broken after we create it" do
		# expect and instance of this class to have a method
		expect(bike).not_to be_broken
	end

	it "should be able to break" do
	bike.break
	expect(bike).to be_broken
	end

	it "should be able to get fixed" do
	bike.break
	bike.fix
	expect(bike).not_to be_broken
	end

end		

describe DockingStation do

	let(:bike) {Bike.new}
	let(:station) {DockingStation.new}
	let(:station) {DockingStation.new(:capacity => 20)}

	it "should accept a bike" do
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	# In a world of bikes and stations, docking a bike increases bike count at the station
	end

	def fill_station(station)
		20.times {station.dock(Bike.new)}
	end

	it "should release a bike" do
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
		station.undock(bike)
		expect(station.bike_count).to eq(0)
	end

	it "should know when it's full" do
		expect(station).not_to be_full
		fill_station(station)
		expect(station).to be_full
	end

	it "should not accept a bike if it's full" do
		fill_station(station)
		expect(lambda {station.dock(bike)}).to raise_error(RuntimeError)
	end

end



# 1 Bikes
# 	a broken or not broken
# 	b unique identifier
# 	c interacts with van
# 	d interacts with station
# 	e interacts with user

# Users
# 	Can take bike
# 	Has name, id and payment details
# 	cannot interact with vans

# Stations
# 	Multiple Stations
# 	fixed capacity of bike

# Bike 'transaction'
# 	1 bike at a time
# 	Must be removed from inv and added to new inv
# 	Passes capactity restrictions

# User transaction
# 	Must pay before taken