require './player'
require './question'


#instantiates a new turn each time
#knows which players turn it is
#calls question method and prints questions
#evaluates responses
#calls method to adjust number of lives

#calls turn method
#checks players lives and ends game when appropriate
#prints GAME instructions

class Game

  def initialize
  end  

  def start_game(player_1, player_2)
    whos_turn = 0
    current_player = player_1    while (player_1.alive? && player_2.alive?) do #check syntax
    
    if whos_turn % 2 != 0
      current_player = player_2
    else
      current_player = player_1
    end
  
    #generate a new question
    current_question = Question.new
    #post question
    puts "#{current_player.name}: #{current_question.question}?"
    #retreive the player answer
    new_answer = $stdin.gets.chomp
    #compare player answer with question answer
    result = current_question.check_answer?(new_answer)
    #if wrong, life lost
    if result #is true
        #end turn
        puts "Correct!!!"
      else
        #lose player life
        current_player.lose_life
        puts "#{current_player.name} lost that round"
        #check if game ends
        puts "Player 1: #{player_1.lives} Player 2: #{player_2.lives}"
        #end turn
      end
      whos_turn += 1
    end 
  end  
end  

player_1 = Player.new(1)
player_2 = Player.new(2)

new_game = Game.new
puts new_game.start_game(player_1, player_2)

