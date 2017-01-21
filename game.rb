require_relative 'player'
require_relative 'game_turn'

class Game
	attr_reader :title
	def initialize(title)
		@title = title
		@players = []
	end

	def add_player(a_player)
		@players.push(a_player)
	end

	def play(rounds=1)
		puts "There are #{@players.size} players in the game"
		@players.each do |p|
			puts p
		end

		1.upto(rounds) do |round_n|
			puts "\nRound #{round_n}"
			@players.each do |p|
				GameTurn.take_turn(p)
				puts p
			end
		end
	end

	def print_name_health(player)
		puts "#{player.name} : #{player.health}"
	end

	def print_stats
		puts "\n*** #{@title}'s Statistics:"
		strong, wimpy = @players.partition { |p| p.strong?}
		puts "\n#{strong.size} strong players:"
		strong.each do |p|
			print_name_health(p)
		end
		puts "\n#{wimpy.size} wimpy players:"
		wimpy.each do |p|
			print_name_health(p)
		end
	end

	def print_scores
		puts "\n*** #{@title}'s SCores:"
		@players.sort.each do |p|
			formatted_name = p.name.ljust(15, '.')
			puts "#{formatted_name}#{p.score}"
		end
	end
end