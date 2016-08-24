class Alian
  attr_reader :position

  def initialize
    # TODO: choose a better start position based on velocity
    @position = rand(10) + 1
  end

  def hit?(strike_point)
    strike_point == position
  end

  def take_turn
    # TODO: apply a max position based on velocity
    @position += position == 1 ? 1 : [1, -1].sample
  end
end
