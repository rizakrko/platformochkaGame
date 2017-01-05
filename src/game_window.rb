require 'gosu'
require_relative '../src/player'
require_relative '../src/tiles'

WINDOW_WIDTH = 640
WINDOW_HEIGHT = 480


class GameWindow < Gosu::Window
  def initialize
    super WINDOW_WIDTH, WINDOW_HEIGHT
    self.caption = 'Game Window'
    #@background_image = Gosu::Image.new('../media/breakout_sprites.png', :tileable=>true)
    @background_image = Gosu::Image.new('../media/background.png', tileable: true)
    #@game_tiles = Gosu::Image.load_tiles('../media/breakout_sprites.png',TILE_SIZE,TILE_SIZE)
    @player = Player.new
    @tiles = Tiles.new
  end

  def update
    if Gosu::button_down? Gosu::KbLeft
      @player.move_left
    end
    if Gosu::button_down? Gosu::KbRight
      @player.move_right
    end
  end

  def draw
    @background_image.draw(0,0,0)
    #row_index = 0
    #column_index = 0
    #@game_tiles.each do |tile|
    #  tile.draw(5 + TILE_SIZE * column_index, 5 + TILE_SIZE * row_index, 1)
    #  column_index += 1
    #  if column_index == 9
    #    column_index = 0
    #    row_index += 1
    #  end
    #  if row_index == 5
    #    break
    #  end
    #end
    @player.draw
    @tiles.draw
  end

end