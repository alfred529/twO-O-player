class Math_game

  attr_accessor :first_num
  attr_accessor :second_num
  attr_accessor :active_player

  def initialize(p1, p2)
    @active_player = p1
    @first_num = Random.rand(1..20)
    @second_num = Random.rand(1..20)
    @p1 = p1
    @p2 = p2
  end

  def whos_turn?

    if @active_player == @p1
      @active_player = @p2
    else
      @active_player = @p1
    end
  end

  def generate_question
    while @active_player.lives > 0

      answer = @first_num + @second_num
      puts "#{@active_player.name}, what is #{first_num} + #{second_num}?"
      @user_answer = gets.chomp.to_i

      if @user_answer == answer
        puts "Correct!"
        puts "#{@active_player.name}, you have #{active_player.lives} lives left"
        puts ""
      else
        puts "Wrong!"
        @active_player.reduce_life
        puts "#{@active_player.name}, you have #{active_player.lives} lives left"
        puts ""
      end

      if @active_player.lives == 0
        puts "#{@active_player.name} lost!"
        return
      end

      whos_turn?

      @first_num = Random.rand(1..20)
      @second_num = Random.rand(1..20)
    end

  end
end