require 'application'


describe Application do

	it 'has no airports' do
		airports = double :airports, number: :nil

	it 'has one or more airports' do
		application = Application.new
		application.number_of_airports.should_not eql(0)
	end

end




