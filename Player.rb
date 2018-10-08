class Player

  attr_accessor :lives
  attr_accessor :name


  def initialize(name)
    @lives = 3
    @name = name
  end

  def reduce_life
    @lives = @lives - 1
  end

end


