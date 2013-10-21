class Compass
	attr_accessor:x
	attr_accessor:y
	attr_accessor:orientation
	


	def initialize(x,y,orientation)
		@x=x
		@y=y
		@orientation=orientation
	end
	
	def turn_left()
		orientation ={"N"=>"W","W" => "S", "S" => "E","E" => "N"}
			@orientation =orientation[@orientation]

	end
	
	
		def turn_right()
			orientation ={"N" => "E","W" => "N", "S" => "W","E" => "S"} 	 	
				@orientation =orientationRight[@orientation]

	end	
	def move()
		orientation ={"N" => "N","W" => "W", "E" => "E","S" => "S"} 	 	
			@orientation =orientationRight[@orientation]
	
	end		
end