class Animal
  def initialize(name, species)
    @name = name
    @species = species
    @toys = []
  end

  attr_accessor :name
  attr_accessor :species
  attr_accessor :toys

  def add_toy(toy)
    @toys.push(toy)
  end





end
