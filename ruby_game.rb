require_relative 'game'

p1 = Player.new('ahmed')
p2 = Player.new('ffdfvfd')

new_game = Game.new('New Game')
puts new_game.title
new_game.add_player(p1)
new_game.add_player(p2)
puts new_game
new_game.play