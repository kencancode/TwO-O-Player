class Questions
  
    def initialize(current_player)
      @num1 = rand(20)
      @num2 = rand(20)
      @answer = @num1 + @num2
  
      puts "#{current_player}: #{@num1} + #{@num2}?"
      
      @player_answer = gets.chomp.to_i

      if @answer == @player_answer.to_i
        puts "Oui, Genius!"
        @correct = true
      else 
        puts "Oh no..."
        @correct = false
      end
    end
  end