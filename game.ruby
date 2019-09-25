require 'chingu'
include Gosu

class Game < Chingu::Window
  def initialize
    super
    self.caption="Este es el Juego"
    push_game_state(Inicio)
  end
end

class Player < Chingu::GameObject
  def initialize(options = {})
    super
    @image = Image["spaceship.png"]
  end

  def holding_left; @x += 3; end
  def holding_right; @x += 3; end
  def holding_up; @x += 3; end
  def holding_down; @x += 3; end
  def space
    Bullet.create(:x => @x, :y => @y)
  end
end

class Bullet < Chingu::GameObject
  def initialize(options = {})
    super
    @image = Image["fire_bullet.png"]
  end

  def update
    @y += 2
    if outside_window?
      self.destroy
    end
  end
end

class Inicio < Chingu::GameState
  def initialize
    super
    Chingu::Text.create(:text => "Aprieta F1 para continuar", :x=> 200, :y => $window.height/2, :size=>30)
    self.input = {:f1 => Play}
  end
end

class Play < Chingu::GameState
  def initialize
    super
    Chingu::Text.create(:text => "Aprieta p para pausa, R para detener")
    @player = Player.create(:x => 200, :y => 200)
    @player.input = [ :holding_left, :holding_right, :holding_up, :holding_down]
    self.input = {:p => Pause, :r => :reset_game}
  end

  def reset_game
    Bullet.destroy_all
    @player.x = $window.widht/2
    @player.y = $window.height * 0.95
  end
end

class Pause < Chingu::GameState
  def initialize
    super
    self.input = {:p => :sinpause}
  end

  def sinpause
    pop_game_sate
  end

  def draw
    super
    previous_game_state.draw
  end
end
Game.new.show

#https://github.com/codalotla/videogames-ruby
