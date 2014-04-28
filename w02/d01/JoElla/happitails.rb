require "pry"
require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'

critter_farm = Shelter.new("CritterFarm")
tomasina = Client.new("Tomasina", 45)

def menu
  puts ""
  puts "Enter the number for the options below:"
  puts ""
  puts "1. Create an animal"
  puts "2. Create a client"
  puts "3. List all animals"
  puts "4. List all the clients"
  puts "5. Quit"
end

def new_animal(name, species, shelter)
  Animal.new(name, species)
  shelter.add_animals(name)
end

def new_client(name, age, shelter)
  Client.new(name, age)
  shelter.add_clients(name)
end

choice = "arbitrary string!"
while choice != 5
  menu
  choice = gets.chomp.to_i
  case choice
  when 1
    #create an animal
    puts "What's the name of the new animal?"
    animal_name = gets.chomp
    puts "What kind of animal is it?"
    animal_species = gets.chomp
    #will later get the name of the shelter here
    new_animal(animal_name, animal_species, critter_farm)

  when 2
    #create a client
    puts "What's the new client's name?"
    client_name = gets.chomp
    puts "How old is the new client?"
    client_age = gets.chomp
    new_client(client_name, client_age, critter_farm)

  when 3
    #list all the animals in critter_farm
    critter_farm.list_animals
  when 4
    #list all the clients
    critter_farm.list_clients
  when 5
    choice = 5
  else
    puts "Numbers only, pleez."
  end
end



binding.pry
