class Questions
  attr_accessor :answer, :prompt

  def initialize
    @num1 = 1 + rand(10) 
    @num2 = 1 + rand(10)
    @answer = @num1 + @num2
    @prompt = "What is #{@num1} + #{@num2}?"
  end

end