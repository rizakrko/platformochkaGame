require 'gosu'
require_relative '../src/game_window'
require_relative '../src/CONSTANTS'

class Player
  def initialize
    @image = Gosu::Image.new('../media/breakout_sprites.png', tileable: true).subimage(0, 200, PLAYER_WIDTH, PLAYER_HEIGHT)
    @x_coord = PLAYER_START_X_POS
    @y_coord = PLAYER_START_Y_POS
    @x_vel = 3
  end

  def move_left
    @x_coord -= @x_vel
    @x_coord += @x_vel if @x_coord <= 0
  end

  def move_right
    @x_coord += @x_vel
    @x_coord -= @x_vel if @x_coord + PLAYER_WIDTH >= WINDOW_WIDTH
  end

  def draw
    @image.draw(@x_coord, @y_coord, 1)
  end
end