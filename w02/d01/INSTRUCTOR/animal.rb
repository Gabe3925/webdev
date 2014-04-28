class Animal
  attr_accessor :name
  attr_reader :species
  def initialize(name, species)
    @name = name
    @species = species
    @toys = []
  end

  def add_animal
    name    = get_answer_to("Great. What's the animal's name?")
    species = get_answer_to("What species is the animal?")
    new_animal = Animal.new(name, species)
  end


end
