require 'plane'

describe Plane do
let(:plane) { Plane.new }


	it 'can not take-off when airportwheather is not sunny' do 
    	airport = double :airport, airportwheather: :nil
    	plane.can_not_takeoff_from airport
    	expect(plane).not_to receive(:take_off)
	end

	it 'can take-off when airportwheather is sunny' do 
    	airport = double :airport, airportwheather: :sunny
    	plane.takeoff_from airport
    	expect(plane).to receive(:take_off)

end	

