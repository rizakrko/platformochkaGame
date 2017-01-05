require 'gosu'
require_relative '../src/game_window'

TILE_SIZE = 35

class Tiles

  def initialize
    @level_number = 1
    @level = []
    init_tiles
    load_level_data_from_file
  end

  def draw
    @level.each_with_index { |tile_number, index|
      @tile_array[tile_number].draw(0 + TILE_SIZE*index, 0, 1)
    }
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

  def load_level_data_from_file
     level = File.read("../levels/#{@level_number}.txt")
     level = level.chars
     level.each { |character|
       @level.push(character.to_i)
     }
  end
end