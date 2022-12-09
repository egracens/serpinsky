require 'bundler/setup'
require 'ruby2d'
require_relative 'serpinsky'

Bundler.require

WIDTH = 800
HEIGHT = 600

serpinsky_fractal = Serpinsky.new(width: WIDTH, height: HEIGHT, points_count: 10_000)

# Window rendering
set width: WIDTH, height: HEIGHT

points_count = 0
text = Text.new("Points count: #{points_count}")

update do
  point = serpinsky_fractal.spawn_point
  c = Circle.new(x: point.x, y: HEIGHT - point.y, radius: 1, color: 'white')
  points_count += 1
  text.text = "Points count: #{points_count}"
end

show
