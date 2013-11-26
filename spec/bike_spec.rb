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

	require './lib/bike_container'
	class ContainerHolder; include BikeContainer; end

	describe BikeContainer do

	let(:bike) {Bike.new}
	let(:container) {ContainerHolder.new}

	it "should accept a bike" do
		expect(container.bike_count).to eq(0)
		container.dock(bike)
		expect(container.bike_count).to eq(1)
	# In a world of bikes and stations, docking a bike increases bike count at the station
	end

	def fill_station(station)
		10.times {station.dock(Bike.new)}
	end

	it "should release a bike" do
		expect(container.bike_count).to eq(0)
		container.dock(bike)
		expect(container.bike_count).to eq(1)
		container.undock(bike)
		expect(container.bike_count).to eq(0)
	end

	it "should know when it's full" do
		expect(container).not_to be_full
		fill_station(container)
		expect(container).to be_full
	end

	it "should not accept a bike if it's full" do
		fill_station(container)
		expect(lambda {container.dock(bike)}).to raise_error(RuntimeError)
	end

	it "should provide the list of available bikes" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break
		container.dock(working_bike)
		container.dock(broken_bike)
		expect(container.available_bikes).to eq([working_bike])
	end

end