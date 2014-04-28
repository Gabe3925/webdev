class Animal
  attr_accessor :name
  attr_reader :species
  def initialize(name, species)
    @name = name
    @species = species
    @toys = []
  end

end
