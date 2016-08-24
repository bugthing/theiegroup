class Trajectory
  def initialize(angle:, velocity:, gravity:)
    @angle = angle
    @velocity = velocity
    @gravity = gravity
  end

  def distance
    ((2 * Math.cos(@angle)) * Math.sin(@angle) * (@velocity ** 2)) / @gravity
  end
end
