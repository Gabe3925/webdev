require 'pry'
require_relative 'models/shelter'
require_relative 'models/animals'
require_relative 'models/client'

# It should create a new shelter for you
fairy_tales = Shelter.new("Fairy Tails")
# It should display a menu of options for the user to choose from:


answer = "blah"
def list_options
  puts ""
  puts "Enter the NUMBER from the list of actions below:"
  puts ""
  puts "1. Create an animal"
  puts "2. Create a client"
  puts "3. Quit"
  puts "4. Display all animals"
  puts "5. Display all clients"
  puts "6. Adopt an animal"
  puts "7. Return an animal"
  puts ""
end

while answer != "3"
  list_options
  answer = gets.chomp

  case answer
  when "1"
    puts "What's the animal's name?"
    name = gets.chomp
    puts "What species is it?"
    species = gets.chomp
    toy = " "
    animal = Animal.new(name, species, toy)
      fairy_tales.add_animal(name)
    binding.pry
  when "2"
    puts "What's the client's name?"
    name = gets.chomp
    puts "What's the client's age?"
    age = gets.chomp
    animals = " "
    client = Client.new(name, age, animals)
      fairy_tales.add_client(name)
      binding.pry
  when "3"
    "Quitting..."
  when "4"
    fairy_tales.prints_animals_names
  when "5"
    fairy_tales.prints_clients_names
  when "6"
    puts "Which animal would you like to adopt?"
    name = gets.chomp
    binding.pry
    fairy_tales.adopt_animal(name)
  when "7"
    puts "Which animal would you like to return?"
    name = gets.chomp
    fairy_tales.return_animal(name)
  end
end
# When creating an animal or client, the user is prompted for information like names, age etc. Newly created animals and clients should be added to the shelter.
