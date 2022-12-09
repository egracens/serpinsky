require 'bundler/setup'
require 'ruby2d'
require_relative 'serpinsky'

Bundler.require

WIDTH = 800
HEIGHT = 600

serpinsky_fractal = Serpinsky.new(width: WIDTH, height: HEIGHT, points_count: 10_000)
serpinsky_fractal.compute

# Window rendering
set width: WIDTH, height: HEIGHT

serpinsky_fractal.points.each do |point|
  c = Circle.new(x: point.x, y: point.y, radius: 1, color: 'white')
end

show
