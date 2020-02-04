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