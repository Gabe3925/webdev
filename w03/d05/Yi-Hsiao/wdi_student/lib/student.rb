class Student
  attr_reader :name, :knowledge_level, :energy_level, :is_alive

  def initialize(name)
    @name = name
    @knowledge_level = 0
    @max_energy = 100
    @energy_level = @max_energy
    @is_alive = true
  end

  def code
    # if the student codes with no energy left, the student dies
    if @energy_level == 0
      @is_alive = false
      return @knowledge_level
    end

    # student gains 1 knowledge point for every 20 energy points
    # energy decreases by 20 points for every coding session
    @knowledge_level += @energy_level / 20
    @energy_level -= 20

    return @knowledge_level
  end

  def rest
    # adds energy up to the maximum energy level
    energy_increment_gain = 30

    if @energy_level + energy_increment_gain < @max_energy
      @energy_level += energy_increment_gain
    else
      @energy_level = @max_energy
    end
  end

  def alive?
    @is_alive
  end
end
