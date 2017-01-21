require_relative 'player'

class Game
	attr_reader :title
	def initialize(title)
		@title = title
		@players = []
	end

	def add_player(a_player)
		@players.push(a_player)
	end

	def roll_die
		rand(1..6)
	end

	def play
		puts "There are #{@players.size} in the game"
		@players.each do |p|
			puts p
		end

		@players.each do |p|
			case roll_die
			when 1..2
				p.blam
			when 5..6
				p.w00t
			else
				p.health
			end
		end
	end
end