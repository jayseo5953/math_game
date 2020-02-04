class Player
  attr_accessor :name, :life

  def initialize (name)
    @name = name
    @life = 3
    puts "#{@name} Joined!"
  end

  def lose_life
    self.life -= 1
  end

  def still_alive?
    self.life != 0
  end
end

class Question
  attr_accessor :question, :answer, :q
  def initialize(q_db)
    @q = q_db[rand(1..5)]
    @question = @q[:question]
    @answer = @q[:answer]
  end

  def validate (ans)
    return ans.to_i == answer
  end
end

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
    puts "\n#{current_player.name}'s turn now!!!!!!'"

    q = Question.new(question_db)
    question = q.question
    puts "\n#{current_player.name}'s turn,\nHere is the question: #{question}"

    ans = gets.chomp.to_i
    if (!q.validate(ans))

      puts "\nIncorrect!"
      puts ""
      current_player.lose_life

      if (current_player.still_alive?)
        puts "#{current_player.name}'s life has been deducted: #{current_player.life}"
        puts "#{current_player.name}'s turn has finished."
        @@turn = !@@turn
        puts "@@turn = #{@@turn}"
      else
        puts "#{current_player.name}'s life is #{current_player.life}. #{waiting_player.name} Wins!"
      end

    else
      puts "Correct!" 
      puts "Player 1's turn has finished."
      @@turn = !@@turn
    end
  end
end
