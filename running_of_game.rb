require "Scenes.rb"

class Map
  @@scenes = {
    'intro' => Intro.new(),
    'name' => Name.new(),
    'breakfast' => Breakfast.new(),
    'quit' => Quit.new(),
  }
  
  def initialize(start)
    @start = start
  end


  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening()
    return next_(@start)
  end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()

