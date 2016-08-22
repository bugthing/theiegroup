class Game
  attr_accessor :player, :alian

  def initialize
    @player = Player.new
    @alian = Alian.new
  end

  def won?
    false
  end
end
