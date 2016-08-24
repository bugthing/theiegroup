require 'spaceship'

class Player
  attr_accessor :position
  attr_reader :spaceship

  def initialize(spaceship=Spaceship.new)
    self.position = 0
    @spaceship = spaceship
  end

  def take_turn
    puts 'Firing Angle?'
    spaceship.nozzle_angle = STDIN.gets.chomp.to_i
  end
end
