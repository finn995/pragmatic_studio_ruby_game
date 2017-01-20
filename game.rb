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

	def play
		puts "There are #{@players.size} in the game"
		@players.each do |p|
			puts p
		end
		@players.each do |p|
			p.w00t
			puts p
		end
	end
end