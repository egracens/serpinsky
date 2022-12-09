require 'bundler/setup'
require 'ruby2d'
require_relative 'serpinsky'

Bundler.require

WIDTH = 800
HEIGHT = 600
POINTS_PER_FRAME = 100
serpinsky_fractal = Serpinsky.new(width: WIDTH, height: HEIGHT)

# Window rendering
set width: WIDTH, height: HEIGHT
points_count = 0
text = Text.new("Points count: #{points_count}")

update do
  POINTS_PER_FRAME.times do
    serpinsky_fractal.spawn_point
    points_count += 1
  end

  points_count += POINTS_PER_FRAME
  text.text = "Points count: #{points_count}"
  serpinsky_fractal.points.each do |point|
    Pixel.draw(x: point.x, y: HEIGHT - point.y, size: 1, color: [255, 255, 255, 1.0])
  end
end

show
