require 'gosu'
require_relative '../src/CONSTANTS'

class Circle
  def initialize(color)
    begin
      @circle = Gosu::Image.new("../media/#{color}_circle.png", tileable: true)
    rescue
      puts "[LOG] Error while loading #{color} circle"
    end
  end

  def update

  end

  def draw(x_pos, y_pos, z_pos)
    unless @circle.nil?
      @circle.draw(x_pos, y_pos, z_pos, CIRCLE_SCALE, CIRCLE_SCALE)
    end
  end

end