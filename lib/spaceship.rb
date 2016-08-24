require 'trajectory'

class Spaceship
  attr_writer :nozzle_angle
  attr_reader :strike_point

  def initialize
    self.nozzle_angle = 0
  end

  def strike_point
    Trajectory.new(angle: @nozzle_angle, velocity: 40, gravity: 9.81).distance.to_i
  end
end
