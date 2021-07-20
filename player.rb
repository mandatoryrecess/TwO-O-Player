#manages player state (name, lives)

class Player 
  attr_reader :lives, :name

  def initialize(n)
    @lives = 3
    @name = "Player #{n}"
  end

  def lose_life
    @lives -= 1
    puts "life count from line 12 #{@lives}"
  end

  def alive?
    @lives > 0
  end    

end    