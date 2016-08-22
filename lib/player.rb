class Player
  attr_accessor :position
  attr_reader :spaceship

  def initialize(spaceship=Spaceship.new)
    self.position = 0
    @spaceship = spaceship
  end
end
