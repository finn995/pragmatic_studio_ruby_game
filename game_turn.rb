require_relative 'player'

module GameTurn
	def self.roll_die
		rand(1..6)
	end

	def self.take_turn(p)
		case roll_die
			when 1..2
				p.blam
			when 5..6
				p.w00t
			else
				puts "#{p.name} was skipped."
			end
	end
end