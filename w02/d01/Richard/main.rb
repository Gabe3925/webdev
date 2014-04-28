
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

def add_client_animal
  animal_name = answer_me("What's the animal's name?")
  species     = answer_me("What is the animal's species?")
  has_toys    = answer_me("How many toys does the animal have?")
  new_pet     = Animal.new(animal_name, species, has_toys)
  return new_pet
end

def add_new_client(clients_of_shelter)
  client_name = answer_me("What is your first and last name?")
  age         = answer_me("How old are you?")
  puts "Do you currently have any pets?"
  yes_no_pets = gets.chomp
    if yes_no_pets.downcase.include? 'y'
      pets = add_client_animal
      new_client = Client.new(client_name, age, pets)
      binding.pry
      puts "Great! #{new_client.client_name}, you and #{new_client.pets[0]} have been added to our database!"
    else
    end
      clients_of_shelter << new_client
      list_clients_of_shelter(clients_of_shelter)
end

def list_animals_in_shelter(animals_in_shelter)
  animals_in_shelter.each_with_index do |animal, index|
    puts "#{index + 1}.)  #{animal.animal_name} is waiting for a home."
    end
end

def list_clients_of_shelter(clients_of_shelter)
  clients_of_shelter.each_with_index do |client, index|
    puts "#{index + 1}.)  #{client.client_name} is a client."
    end
end
animals_in_shelter = []
clients_of_shelter = []
pets = []


animal_1 = Animal.new("Romeo", "Dog", 15)
animal_2 = Animal.new("Rascal", "Cat", 24)
client_1 = Client.new("Richard Hessler", 26, animal_1)
client_2 = Client.new("Sara Hessler", 25, animal_2)

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
  when '2'
    puts "Oh! A New Client! Let's get you documented! (Choose a number.)"

    add_new_client(clients_of_shelter)
    # index_of_apt_to_view = gets.chomp.to_i - 1
    # landlords_apts[index_of_apt_to_view].print_details
  when '3'
    add_apartment(landlords_apts)
  when '4'
    puts "Which apartment would you like to add a tenant to? (Choose a number.)"
    list_apartments(landlords_apts)
    index_of_which_apt_to_add_to = gets.chomp.to_i - 1
    landlords_apts[index_of_which_apt_to_add_to].add_tenant
  when '5'
    puts "Until next time"
  else
    puts "You didn't provide a valid response."
  end
end
