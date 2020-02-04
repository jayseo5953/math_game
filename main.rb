require './game'
require './questions_db'


game = Game.new(@questions)
game.register

while (game.player1.life != 0 && game.player2.life != 0) do
  game.play
end


