class Player
	attr_reader :health
	attr_accessor :name

	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
	end

	def to_s
		"This is #{@name} with #{@health} health points."
	end

	def score
		@health + @name.length
	end

	def w00t
		@health += 10
		puts "#{@name} got w00ted"
	end

	def blam
		@health -= 10
		puts "#{@name} got blammed"
	end
end