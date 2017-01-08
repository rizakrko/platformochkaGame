require 'gosu'
require_relative '../src/player'
require_relative '../src/circle'
require_relative '../src/CONSTANTS'
require_relative '../src/circle_field'


class GameWindow < Gosu::Window
  def initialize
    super WINDOW_WIDTH, WINDOW_HEIGHT
    self.caption = 'Game Window'
    @background_image = Gosu::Image.new('../media/background.png', tileable: true)
    @player = Player.new
    @circle_field = CircleField.new
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
    @player.draw
    @circle_field.draw
  end

  def needs_cursor?
    true
  end
  
end