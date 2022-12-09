require_relative 'geometry/point'

class Serpinsky
  attr_reader :points_count, :width, :height, :initial_points, :last_point, :points

  def initialize(points_count:, width:, height:)
    @points_count = points_count
    @width = width
    @height = height
    @points = []
    @initial_points = [
      Point.new(0, 0),
      Point.new(width, 0),
      Point.new(width / 2, height)
    ]
    @last_point = Point.new(width / 2, height / 2)
  end

  def spawn_point
    point_a = initial_points.sample
    point_b = last_point

    @last_point = Point.new(
      (point_a.x + point_b.x) / 2,
      (point_a.y + point_b.y) / 2
    )

    points << last_point
  end
end
