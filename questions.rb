class Game
  
    def initialize(current_player)
      @lives = 3
      @num1 = rand(5)
      @num2 = rand(5)
      @answer = @num1 + @num2
  
    while @lives > 0 do
      puts "#{current_player}: #{@num1} + #{@num2}?"
      
      @player_answer = gets.chomp.to_i

      if @answer == @player_answer.to_i
        puts "Oui, Genius!"
        puts "Your hp is #{@lives} /3"
      else 
        puts "Oh no..."
        @lives -= 1
        puts "You have #{@lives} /3"
      end
    end
    end

  end

  test = Game.new("Player")