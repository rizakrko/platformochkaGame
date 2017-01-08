require 'gosu'
require_relative '../src/CONSTANTS'
require_relative '../src/circle'

class CircleField
  def initialize
    @colors = []
    (1..80).each{
      @colors.push(rand(5))
    }
    @circle_images = []
    COLORS.each { |color_name|
      @circle_images.push(Circle.new(color_name))
    }
  end

  def draw
    row_index = column_index = 0
    @colors.each{ |color|
      @circle_images[color].draw(row_index * TILE_SIZE, column_index * TILE_SIZE, 1)
      row_index += 1
      if row_index == 16
        row_index = 0
        column_index += 1
      end
    }
  end
end