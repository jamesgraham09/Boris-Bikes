require_relative '../lib/van.rb'
require_relative '../lib/bikes.rb'
require_relative '../lib/station.rb'

describe Van do
	let(:station){Station.new}
	let(:van){Van.new}

	def van_fodder
		5.times {station.dock(Bike.new)}
		van.load_van(station)
	end

	it "should take bikes from another location" do
		van_fodder
		expect(van.bikes).not_to be_empty
	end

	it "removes bikes from the other location when loading van" do
		van_fodder
		expect(station.bikes.count).to eq 0
		expect(station.bikes).to be_empty
	end
end