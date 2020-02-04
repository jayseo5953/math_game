# require './classes'
# require './questions'

# def register
#   print "Player 1 Name: "
#   name1 = gets.chomp

#   player1 = Player.new(name1)


#   print "Player 2 Name: "
#   name2 = gets.chomp
  
#   player2= Player.new(name2)

#   return { 
#     :P1 => player1,
#     :P2 => player2
#   }

# end

# def choose_a_question
#   gets.chomp.to_i
# end

# def give_answer
#   gets.chomp.to_i
# end


# def check_lives (p1,p2)
#   puts "Player 1 life: #{p1.life}\nPlayer 2 life: #{p2.life}"
#   return (p1.life == 0 || p2.life == 0)
# end

# def finish(p1,p2)
#   if (p1.life == 0)
#     puts "Player 1 life is 0. Player 2 wins!"
    
#   elsif (p2.life == 0)
#     puts "Player 2 life is 0. Player 1 wins!"
#   end
# end

# def play2 (p1,p2)
#   puts "\n#{p2.name},\nChoose from 1-5"
#   q = choose_a_question

#   question = @questions[q]

#   puts "\n"+ question[:question]
#   ans = give_answer

#   puts ""

#   puts "question: #{question[:question]}\nanswer: #{ans}"

#   puts ""

#   if (question[:answer] == ans)
#     puts "Correct!"
#     # puts check_lives(p1,p2)
    
#     if (!check_lives(p1,p2))
#       play2(p1,p2)
#     else
#       finish(p1,p2)
#     end

#   else
#     puts "Incorect!"
#     p2.life -= 1
#     # puts check_lives(p1,p2)

#     if (!check_lives(p1,p2))
#       play1(p1,p2)
#     else
#       finish(p1,p2)
#     end
#   end

# end


# def play1 (p1,p2)
#   puts "\n#{p1.name},\nChoose from 1-5"
#   q = choose_a_question

#   question = @questions[q]

#   puts "\n"+ question[:question]
#   ans = give_answer

#   puts ""

#   puts "question: #{question[:question]}\nanswer: #{ans}"

#   puts ""

#   if (question[:answer] == ans)
#     puts "Correct!"
#     # puts check_lives(p1,p2)
    
#     if (!check_lives(p1,p2))
#       play2(p1,p2)
#     else
#       finish(p1,p2)
#     end

#   else
#     puts "Incorect!"
#     p1.life -= 1
#     # puts check_lives(p1,p2)

#     if (!check_lives(p1,p2))
#       play2(p1,p2)
#     else
#       finish(p1,p2)
#     end
#   end

# end

