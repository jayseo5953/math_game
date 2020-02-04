require './player'
require './question'
class Game
  attr_accessor :player1, :player2, :current_player, :waiting_player, :questions
  
  def initialize(questions_db)
    @questions = questions_db
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

 
  def play

    q = Question.new(questions)
  
    puts "\n#{current_player.name}'s turn,\nHere is the question:\n#{q.ask}"

    ans = gets.chomp.to_i

    if (!q.validate(ans))

      puts "\nINCORRECT!!!"
      current_player.lose_life

      if (current_player.still_alive?)
        puts "#{player1.name}'s life: #{player1.life}"
        puts "#{player2.name}'s life: #{player2.life}"
       
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
     
      puts "\n----- NEW TURN -----"
    end
    swap_current = current_player
    self.current_player = waiting_player
    self.waiting_player = swap_current
  end
end