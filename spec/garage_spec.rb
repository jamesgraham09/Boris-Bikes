require_relative '../lib/garage.rb'
require_relative '../lib/bikes.rb'

describe Garage do
	
	it "should be able to fix a bike" do
	bike = Bike.new
	bike.break
	garage = Garage.new({:capacity => 10})
	garage.accept(bike)
	expect(bike).not_to be_broken 
	end

end