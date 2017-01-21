require_relative 'game'

describe Game do

	before do
		@g1 = Game.new('New Game')
	end

	it "has initialized title" do
		@g1.title.should == 'New Game'
	end

	context "playing" do
		before do
			@p1 = Player.new('ahmed', 100)
			@g1.add_player(@p1)
			# @g1.play ==> SHOULD NOT BE HERE ; CAUSES RANDOMNESS AND INTERFERES WITH STUB()
		end

		it "gets w00ted if rolled number was high" do
			@g1.stub(:roll_die).and_return(5)
			@g1.play
			@p1.health.should == 110
		end

		it "passes if rolled number was in the middle" do
			@g1.stub(:roll_die).and_return(3)
			@g1.play
			@p1.health.should == 100
		end

		it "gets blammed if rolled number was low" do
			@g1.stub(:roll_die).and_return(1)
			@g1.play
			@p1.health.should == 90
		end
	end
end