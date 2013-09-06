require 'airportwheather'

describe Airportwheather do
let(:airportwheather) { Airportwheather.new }

	it 'can be sunny' do
		airportwheather.state = "sunny"
		expect(airportwheather.sunny?).to be_true
	end
	
	it 'can be stormy' do
		airportwheather.state = "stormy"
		expect(airportwheather.stormy?).to be_true
	end



end