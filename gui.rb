require 'ruby2d'

class GUI
  attr_reader :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def render_points(points); end
end
