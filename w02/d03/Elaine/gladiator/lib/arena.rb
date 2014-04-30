require 'active_support/core_ext'

class Arena
  attr_reader :name, :gladiators

  def initialize(name)
    @name = name.titleize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.length < 2
      @gladiators.push(gladiator)
    end
  end

  def fight
    if @gladiators.length == 2
      if @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Spear"
        @gladiators.delete_at(1)
      elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Trident"
        @gladiators.delete_at(0)
      elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club"
        @gladiators.delete_at(1)
      elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Spear"
        @gladiators.delete_at(0)
      elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Trident"
        @gladiators.delete_at(1)
      elsif @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Club"
        @gladiators.delete_at(0)
      elsif @gladiators[0].weapon == @gladiators[1].weapon
        @gladiators.delete_at(1)
        @gladiators.delete_at(0)
      else
      end # ends weapons comparison if statement
    elsif @gladiators.length < 2

    end

  end

end
