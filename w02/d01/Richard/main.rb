
# Create a main.rb
# - It should create a new shelter for you
# - It should display a menu of options for the user to choose from:
#   - Create an animal
#   - Create a client
#   - Quit
# - When creating an animal or client, the user is prompted for information like names, age etc. Newly created animals and clients should be added to the shelter.
require 'pry'
require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'

def answer_me(question)
  puts question
  answer = gets.chomp
  return answer
end


def add_new_animal(animals_in_shelter)
  animal_name = answer_me("What's the animal's name?")
  species     = answer_me("What is the animal's species?")
  has_toys    = answer_me("How many toys does the animal have?")
  new_animal = Animal.new(animal_name, species, has_toys)
  animals_in_shelter << new_animal
  puts ""
  puts "Hopefully we can find #{animal_name} and home soon."
  puts "Here is a current list of all the animals waiting for a home:"
  puts ""
  list_animals_in_shelter(animals_in_shelter)
end

def list_animals_in_shelter(animals_in_shelter)
  animals_in_shelter.each_with_index do |animal, index|
    puts "#{index + 1}.)  #{animal.animal_name} is waiting for a home."
    end
end

animals_in_shelter = []
clients_of_shelter = []

animal_1 = Animal.new("Romeo", "Dog", 15)
animal_2 = Animal.new("Rascal", "Cat", 24)
animals_in_shelter << animal_1
animals_in_shelter << animal_2
list_animals_in_shelter(animals_in_shelter)




def list_options
  puts ""
  puts "Enter the NUMBER for the action you'd like to perform"
  puts ""
  puts "1. Create and animal (weird, sounding, I know - go with it.)"
  puts "2. Play god - Create a client"
  puts "3. Quit"
  puts ""
end

answer = ""

while answer != '3'
  list_options
  answer = gets.chomp
  case answer
  when '1'
    puts "Great, lets 'create' an animal:"
    add_new_animal(animals_in_shelter)

end
