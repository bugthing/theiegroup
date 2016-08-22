class Spaceship
  attr_writer :nozzle_angle
  attr_reader :strike_point

  def initialize
    self.nozzle_angle = 0
  end

  def strike_point
    # TODO: Fillin crazy math
    @nozzle_angle
  end
end
