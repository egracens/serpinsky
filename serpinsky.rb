require_relative 'geometry/point'

class Serpinsky
  attr_reader :width, :height, :initial_points, :points

  def initialize(width:, height:)
    @width = width
    @height = height
    @points = [Point.new(width / 2, 0)]
    @initial_points = [
      Point.new(0, 0),
      Point.new(width, 0),
      Point.new(width / 2, height)
    ]
  end

  def spawn_point
    point_a = initial_points.sample
    point_b = points[-1]

    next_point = Point.new(
      (point_a.x + point_b.x) / 2,
      (point_a.y + point_b.y) / 2
    )

    points << next_point
  end
end
