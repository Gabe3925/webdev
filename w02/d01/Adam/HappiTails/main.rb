require 'pry'

require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

#=======================
# Menu and Program Flow
#=======================

def list_options
  puts ""
  puts "I've created a new shelter for you. Enter the NUMBER from the list of actions below:"
  puts ""
  puts "1. Create an animal"
  puts "2. Create a client"
  puts "3. Quit"
  puts ""
end

#=======================
# Helper Methods and initial variables
#=======================

# for semantic gathering of user input
def get_answer_to(question)
  puts question
  answer = gets.chomp
  return answer
end

# list all animals
def list_animals(animals)
  aniamls.each_with_index do |aniamls, index|
    puts "Aniaml #{index + 1}"
  end
  return nil
end

# for use when user adds an animal
def add_animal(animal_arrray)
  name = get_answer_to("What's the name of the animal?")
  species = get_answer_to("What is the species of animal?")
  animal = animal.new(name, species)
  animal_array << new_animal
  puts ""
  puts "Great. You've added #{new_animal.name} to your collection of animals."
end

# for use when user adds a client
def add_client(client_array)
  name = get_answer_to("What is the name of the cleint")
  age = get_answer_to('What is the age of the cleint?')
  client = client.new(name, age)
  client_array << new_client
  puts ""
  puts "Great. You've added a client."
end



binding.pry
