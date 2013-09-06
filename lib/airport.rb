class Airport

def initialize(planes=[])
	@planes = planes
	# @bombscare = bombscare
	end
	
	def has_planes?
		!@planes.empty?
	end

	def allow_landing_to plane 
		@planes.insert('plane')
		@planes = plane.landing_ok
	end

	def landing_ok
		receive(':landing_ok')	
	end

	def capacity_of_50_reached
		@planes=50
	    raise 'Sorry, no landing. Over-Capacity'
	end

	def bomb_scare
	    raise 'Sorry, no landing. Bomb scare'
	end

   def lose_plane_after_takeoff
   	@planes.pop
   end

end	


	# def has_bombscare?
	#     if true
	#     raise 'Sorry, no landing. Bomb scare'
	# 	end
	# end

	
   
 #   def no_bomb_scare
	#     raise 'Sorry, no landing. Bomb scare'
	# end





# def fix_bike(bike)
# 		if bike.is_fixed? 
# 			@back_to_van << bike
# 		else
# 		 	bike.fix # how to define`?
# 		 	@back_to_van << bike
# 		end
# end






		
# 	def @station.rent_bike
# 		receive(':rent_bike')	
# 	end



# class Station

#   def initialize bikes=[]
#     @bikes = bikes 
#   end

#   def has_bikes?
#     !@bikes.empty?
#   end

#   def rent_bike
#   	raise 'No bikes in Station' if !has_bikes?
#   	@bikes.pop
#   end

# end