require 'bundler/setup'
require_relative 'serpinsky'
require 'ruby2d'

Bundler.require

WIDTH = 800
HEIGHT = 600

serpinsky_fractal = Serpinsky.new(width: WIDTH, height: HEIGHT, points_count: 10_000)
serpinsky_fractal.compute

set width: WIDTH, height: HEIGHT
puts serpinsky_fractal.points
serpinsky_fractal.points.each do |point|
  c = Circle.new(x: point.x, y: point.y, radius: 1, color: 'white')
end

show
