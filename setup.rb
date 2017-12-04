require_relative "./Scenes.rb"

class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('end II')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    current_scene.enter()
  end
end

class Map
  @@scenes = {
    'intro' => Intro.new(),
    # 'menu' => Menu,
    'name' => Name.new(),
    'breakfast' => Breakfast.new(),
    'end I' => END_I,
    'end II' => END_II,
    'home' => Home,
    'hiking' => Hike,
    'practice' =>Practice,
    'quit' => Quit.new(),
  }
  
  def initialize(start)
    @start = start
  end


  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start)
  end
end

a_map = Map.new('intro')
a_game = Engine.new(a_map)
a_game.play()
