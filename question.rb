#stores question logic
#has method to generate a question

class Question 
  attr_reader :question, :answer
  
  def initialize
    num_1 = rand(10)
    num_2 = rand(12)
    @question = "What is #{num_1} plus #{num_2}?"
    @answer = num_1 + num_2
  end  

  def check_answer?(player_answer)
    if player_answer == @answer.to_s
      return true 
    else 
      return false
    end
  end  
end  