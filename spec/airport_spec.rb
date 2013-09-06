require 'airport'

describe Airport do

let(:airport) { Airport.new }
	
	it 'has no planes' do
		expect(airport).not_to have_planes
	end

	it 'can hold landing planes' do
		plane = double :plane
		expect(plane).to receive(:landing_ok)
		airport.allow_landing_to plane
	end

	it 'can give landing signal to planes' do
		plane = double :plane, landing_ok: :plane
		expect(plane).to receive('landing_ok')
		airport.allow_landing_to plane
	end
	

	it 'has planes after allow landing' do
		airport= Airport.new [:plane]
		expect(airport).to have_planes
	end	

	it 'does not allow landing if capacity = 50 planes' do 
		expect{airport.capacity_of_50_reached}.to raise_error 'Sorry, no landing. Over-Capacity' 
   	end

   	it 'does not allow landing when bomb scare' do 
		expect{airport.bomb_scare}.to raise_error 'Sorry, no landing. Bomb scare' 
   	end


   	it 'has one plane less if a plane takes off' do
 		expect(airport.lose_plane_after_takeoff)
   	end	

   	
end


  #  	it 'does allow landing when no bomb scare' do 
		# expect{airport.no_bomb_scare}.not_to raise_error() 
  #  	end

   	# xit 'can call off bomb scare' do
   	# 	expect
   	# end	

	# it 'has no bomb scare' do
	# 	expect(airport).not_to have_bombscare
	# end



#   it 'does not rent a bike if there are no bikes' do 
#     station = Station.new
#     expect{station.rent_bike}.to raise_error 'No bikes in Station' 
#   end
# end
