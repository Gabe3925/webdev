require "pry"
class Arena
  attr_accessor :name
  attr_accessor :combatants

  def initialize(name)
    @name = name
    @combatants = []
  end

  def add_gladiator(fighter)
    if @combatants.count >= 2
      return false
    end
      @combatants.push(fighter)
  end

  def fight(fighter1, fighter2)
    beats = {"spear" => "trident", "club" => "spear", "trident" => "club"}
    if @combatants.count == 2
      if beats[fighter1.weapon] == fighter2.weapon
        return fighter2
      elsif beats[fighter1.weapon] != fighter2.weapon
        return fighter1
      else
        return "its a draw"
      end
    end
  end

end
