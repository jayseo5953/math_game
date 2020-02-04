require './player'
require './question'
class Game
  attr_accessor :player1, :player2, :current_player, :waiting_player
  @@turn = true
  def initialize
    register
  end

  def register
    print "Player 1 Name: "
    name1 = gets.chomp
    @player1 = Player.new(name1)

    print "Player 2 Name: "
    name2 = gets.chomp
    @player2= Player.new(name2)

    @current_player = player1
    @waiting_player = player2
  end

  def play (question_db)
    if (@@turn)
      current_player = player1
      waiting_player = player2
    else
      current_player = player2
      waiting_player = player1
    end
   
    q = Question.new(question_db)
    question = q.question
    puts "\n#{current_player.name}'s turn,\nHere is the question:\n#{question}"

    ans = gets.chomp.to_i

    if (!q.validate(ans))

      puts "\nINCORRECT!!!"
      current_player.lose_life

      if (current_player.still_alive?)
        puts "#{player1.name}'s life: #{player1.life}"
        puts "#{player2.name}'s life: #{player2.life}"
        @@turn = !@@turn
        puts "\n----- NEW TURN -----"
      else
        puts ""
        puts "#{current_player.name}'s life is #{current_player.life}..."
        puts ""
        puts "*****************************"
        puts ""
        puts "        #{waiting_player.name} Wins!"
        puts ""
        puts "*****************************"
      end

    else
      puts "\nCORRECT!!!" 
      puts "#{player1.name}'s life: #{player1.life}"
      puts "#{player2.name}'s life: #{player2.life}"
      @@turn = !@@turn
      puts "\n----- NEW TURN -----"
    end
  end
end