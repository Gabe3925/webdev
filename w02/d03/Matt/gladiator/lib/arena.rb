require "pry"
require_relative "gladiator"

class Arena
  attr_reader :arena_name, :gladiators
  attr_writer :arena_name, :gladiators

  def initialize(arena_name)
    @arena_name = arena_name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if gladiators.count >= 2
      return false
    end
    @gladiators.push(gladiator)
    # if there are already 2 gladiators
  end

  def winner?
      return true
    else
      return false
    end
  end

  def battle
    if gladiators.count >= 2
      weapons = gladiators.map do |battle|
        battle.weapon.to_ary
      end
      if weapons.include?("spear") && weapons.include?("trident")
        gladiators.delete_at(weapons.index("spear"))
      elsif weapons.include?("spear") && weapons.include?("club")
        gladiators.delete_at(weapons.index("club"))
      elsif weapons.include?("trident") && weapons.include?("club")
        gladiators.delete_at(weapons.index("trident"))
      else
        gladiators.delete_by_index
      end
    end
  end

  binding.pry

  # Go...!

  # def name
  #   @quantity -= 1
  # end

