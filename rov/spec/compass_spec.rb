require_relative "../app/compass"

describe Compass do

	it "should initialize with location" do
		@compass=Compass.new(1,2,"N")
		@compass.x.should==1
		@compass.y.should==2
		@compass.orientation.should=="N"
	end

	it "should turn left from N" do
		@compass=Compass.new(1,2, "N")
		@compass.turn_left
		@compass.orientation.should=="W"
	end

	it "should turn left from W" do
		@compass=Compass.new(1,2, "W")
		@compass.turn_left
		@compass.orientation.should=="S"
	end

	it "should turn left from S" do
		@compass=Compass.new(1,2, "S")
		@compass.turn_left
		@compass.orientation.should=="E"
	end	

	it "should turn left from E" do
		@compass=Compass.new(1,2, "E")
		@compass.turn_left
		@compass.orientation.should=="N"
	end	

	it "should initialize with location" do
		@compass = Compass.new(1,2,"N")
		@compass.x.should == 1
		@compass.y.should == 2
		@compass.orientation == "N"
	end

	it "should turn right from N" do
		@compass=Compass.new(1,2,"N")
		@compass.turn_right
		@compass.orientation.should == "E"
	end

	it "should turn right from W" do
		@compass=Compass.new(1,2,"W")
		@compass.turn_right
		@compass.orientation.should == "N"
	end

	it "should turn right from S"do
		@compass=Compass.new(1,2,"S")
		@compass.turn_right
		@compass.orientation.should == "W"
	end

	it "should turn right from E"do
		@compass=Compass.new(1,2,"E")
		@compass.turn_right
		@compass.orientation.should == "S"
	end

	it "should turn north from N" do
		@compass=Compass.new(1,1,"N")
		@compass.move
		@compass.x==1
		@compass.y==2
		@compass.orientation.should == "N"
	end
		it "should turn north from W" do
		@compass=Compass.new(1,1,"W")
		@compass.move
		@compass.x==0
		@compass.y==1
		@compass.orientation.should == "W"
	end
		it "should turn north from S" do
		@compass=Compass.new(1,1,"S")
		@compass.move
		@compass.x==1
		@compass.y==0
		@compass.orientation.should == "S"
	end
		it "should turn north from E" do
		@compass=Compass.new(1,1,"E")
		@compass.move
		@compass.x==2
		@compass.y==1
		@compass.orientation.should == "E"
	end
end