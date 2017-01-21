require_relative 'player'

describe Player do

	before do
		@initial_h = 100
		@p1 = Player.new('ahmed', @initial_h)
	end

	it "is capitalized" do
		@p1.name.should == 'Ahmed'
	end

	it "has initial health" do
		@p1.health.should == 100
	end

	it "calculates score" do
		@p1.score.should == 100 + 5
	end

	it "prints" do
		@p1.to_s.should == "This is Ahmed with 100 health points."
	end

	it "gets w00ted" do
		@p1.w00t
		@p1.health.should == 110 
	end

	it "gets blammed" do
		@p1.blam
		@p1.health.should == 90
	end

	context "default value" do

		before do
			@p1 = Player.new('ahmed')
		end

		it "has default value" do
			@p1.health.should == 100
		end
	end
end