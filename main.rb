require './questions.rb'
require './player.rb'

player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")
current_player = player_1.name

while (player_1.hp > 0 && player_2.hp > 0) do
	
	current_player = (current_player == player_1)? player_2 : player_1
	question = Questions.new

	puts "----------------YOUR TURN----------------"
	
  puts "#{current_player.name}: #{question.prompt}"
    player_answer = gets.chomp.to_i

  if player_answer == question.answer
    puts "Oui, Genius! Your current HP is #{current_player.hp}/3 "
  else
    current_player.hp -= 1
    puts "Oh no...You current HP is #{current_player.hp}/3"
  end
 
  if player_1.hp == 0
    puts "You have lost to Player 2"
	elsif player_2.hp == 0
    puts "You have lost to Player 1"
 	end


end

puts "----------------GAME OVER----------------"


  