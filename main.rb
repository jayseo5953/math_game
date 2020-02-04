require './game'
require './questions_db'


game = Game.new

while (game.player1.life != 0 && game.player2.life != 0) do
  game.play(@questions)
end


# players = register

# p1 = players[:P1]
# p2 = players[:P2]

# puts "\n \nGame start!! \n#{p1.name} vs #{p2.name}"

# play1(p1,p2)




