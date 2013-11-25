# This is a description of the tests for the Class Bike

require_relative "../lib/bike"

describe Bike do
	
	# Defining a specific feature (behaviour) that we expect to be present
	it "should not be broken after we create it" do
		bike = Bike.new
		# expect and instance of this class to have a method
		expect(bike).not_to be_broken
	end

	it "should be able to break" do
	bike = Bike.new
	bike.break
	expect(bike).to be_broken
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