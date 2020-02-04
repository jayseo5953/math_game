class Question
  attr_accessor :question, :answer, :q
  def initialize(q_db)
    @q_db = q_db    
  end

  def ask
    @q = @q_db[rand(1..5)]
    @answer = @q[:answer]
    @q[:question]
  end

  def validate (ans)
    return ans.to_i == answer
  end
end