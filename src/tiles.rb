require 'gosu'
require_relative '../src/game_window'

TILE_SIZE = 35

class Tiles

  def initialize
    init_tiles
  end

  def draw
    @tile_array[0].draw(0,0,1)
    @tile_array[0].draw(TILE_SIZE, 0, 1)
  end

  def init_tiles
    tile_set = Gosu::Image.new('../media/breakout_sprites.png', tileable: true)
    @tile_array = []
    (0..9).each { |row_index|
      (0..5).each { |column_index|
        @tile_array.push(tile_set.subimage(TILE_SIZE*row_index, TILE_SIZE*column_index, TILE_SIZE, TILE_SIZE))
      }
    }
  end
end