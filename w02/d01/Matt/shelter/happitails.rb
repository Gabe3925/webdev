require "pry"
require_relative 'models/animal.rb'
require_relative 'models/client.rb'
require_relative 'models/shelter.rb'

# class
#   def initialize
#     @name = ''
#   end
# end

all = []

def add(item)
  puts item
  value = gets.chomp
  return value
end

def add_animal(animal_array)
  name = add("What is the animal's name?")
  species = add("What species is the animal?")
  toys = add("What toys does the animal have?")
  new_animal = Animal.new(name, species, toys)
  animal_array << new_animal
  puts ""
  puts "You added #{new_animal.name}"
end

binding.pry

animal1 = Animal.new("Rolf", "Dog", "Bone")
all << animal1

# add = add_animal.new()
# puts add


