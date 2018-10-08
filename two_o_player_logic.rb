
# generates random math questions to ask the players and keeps track of who's turn it is
class Math_game

  def initialize(p1, p2)
    @turn = "p1"
    @first_num = generate_random_num
    @second_num = generate_random_num
  end

  def whos_turn?
    if @turn == "p1"
      @turn = "p2"
    else
      @turn = "p1"
  end

  def generate_random_num

  end

  def generate_question
  end

end

# keeps track of player's lives
class Player

  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def reduce_lives
    @lives = @lives - 1
  end

end


p1 = Player.new

p2 = Player.new