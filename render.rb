class Window
  WINDOW_WIDTH = 800
  WINDOW_HEIGHT = 600

  set width: WINDOW_WIDTH, height: WINDOW_HEIGHT

  points.each do |point|
    p = Point.new(point.x, point.y)
  end

  show
end
