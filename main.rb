require './Math_game'
require './Player'



p1 = Player.new('Alfred')
p2 = Player.new('Bobby')
g = Math_game.new(p1, p2)

# puts g.first_num
# puts g.second_num
puts g.generate_question
