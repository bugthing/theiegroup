class Alian
  attr_reader :position

  def initialize
    @position = rand(10) + 1
  end

  def hit?(strike_point)
    strike_point == position
  end

  def take_turn
    @position += position == 1 ? 1 : [1, -1].sample
  end
end
