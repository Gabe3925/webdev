require 'pry'

class Animal

  def initialize(name, species, toys)
    @name = name
    @species = species
    @toys = [toys]
  end

  def name
    return @name
  end

  def species
    return @species
  end

  def toys
    return @toys
  end
end

# animal_1 = Animal.new("Max", "dog", "ducky")
# puts animal_1.name
