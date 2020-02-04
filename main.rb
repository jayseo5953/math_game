require './game'
require './questions_db'


game = Game.new

while (game.player1.life != 0 && game.player2.life != 0) do
  game.play(@questions)
end


