require 'pry'

require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'
require_relative 'models/seeds'

# Helpful Methods

def get_answer_to(question)
  puts ""
  puts question
  answer = gets.chomp
  return answer
end

# Add an animal
def add_animal(animal_array)
  animal_name = get_answer_to("What's the animal's name?")
  animal_species = get_answer_to("What's the species?")
  new_animal = Animal.new(animal_name, animal_species)
  animal_array << new_animal
end

# Add a client
def add_client(client_array)
  client_name = get_answer_to("What's the client's name?")
  client_age = get_answer_to("How old is the client?")
  new_client = Client.new(client_name, client_age)
  client_array << new_client
end

# Creates empty arrays into which we will push newly instantiated animals and clients
animals_list = []
clients_list = []

# Instantiates a shelter
happi_tails = Shelter.new("HappiTails")

# Menu

def menu_options
  puts ""
  puts "Enter a NUMBER from the following list of actions:"
  puts "1. Create an animal"
  puts "2. Create a client"
  puts "3. Quit"
end

answer = "0"

while answer !=3
  menu_options
  answer = gets.chomp
  case answer
  when "1"
    add_animal(animals_list)



  when "2"
    add_client(clients_list)

  when "3"
    puts "Thanks, and goodbye!"
  end

end

binding.pry



