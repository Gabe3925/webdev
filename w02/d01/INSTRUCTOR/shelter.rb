require_relative 'animal'
require_relative 'client'

class Shelter
  attr_accessor :name
  attr_reader :animals, :clients
  def initialize(name)
    @name = name
    @animals = []
    @clients = []
  end

  # a shelter should be able to display all of its clients
  def display_all_clients
    clients.each do |client|
      puts client.name
    end
  end

  # a shelter should be able to display all of its animals
  def display_all_animals
    animals.each do |animal|
      puts animal.name
    end
  end

  def add_animal
    name    = get_answer_to("What's the animal's name?")
    species = get_answer_to("What species is the animal?")
    new_animal = Animal.new(name, species)
    animals << new_animal
  end

  def add_client
    name = get_answer_to("What's the new client's name?")
    age  = get_answer_to("What's the new client's age?")
    new_client = Client.new(name, age)
    clients << new_client
  end
  # a shelter should be able to facilitate an adoption of one of
      # its animals by one of its clients
  # a shelter should be able to facilitate a return (one of its clients returning his/her
      # pet to the shelter)
end
