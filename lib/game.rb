require 'player'
require 'alian'

class Game
  attr_reader :player, :alian

  def initialize
    @player = Player.new
    @alian = Alian.new

    @whos_turn = :player
  end

  def won?
    alian.hit? player.spaceship.strike_point
  end

  def initiate_turn!
    send(@whos_turn).take_turn
    next_turn!
  end

  private

  def next_turn!
    @whos_turn = @whos_turn == :player ? :alian : :player
  end
end
