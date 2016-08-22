class Alian
  attr_reader :spaceship

  def initialize(spaceship=Spaceship.new)
    @spaceship = spaceship
  end
end
