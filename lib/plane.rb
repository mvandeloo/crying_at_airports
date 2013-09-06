class Plane

	def initialize(takeoff=nil)
    	@takeoff = takeoff
  	end	
  
    def takeoff? 
     !@takeoff.nil?
   end


  	def takeoff_from airport
  		@takeoff = airport.airportweather
  		"take_off"
  	end

end 	

