require "pry"
require_relative "animal"
require_relative "shelter"
require_relative "client"

ga_shelter = Shelter.new("GA")

def gets_input(prompt)
  puts prompt
  answer = gets.chomp
  return answer
end

def create_animal
  name = gets_input("What is your pet's name?")
  species = gets_input("What is #{name}'s species?")
  toys = gets_input("How many toys does your animal have?")
  new_animal = Animal.new(name, species)
  new_animal.add_toys(toys)
  return new_animal
end

def create_client
  count = 0
  name = gets_input("What is your name?")
  age = gets_input("How old are you?")
  pets = gets_input("How many pets do you have?").to_i
  if (pets) > 0
    new_client = Client.new(name, age)
    while count < pets
      new_client.add_pets(create_animal)
      count += 1
    end
  else
    new_client = Client.new(name, age)
  end
end


def main_menu
  puts "Welcome to the GA shelter!"
  puts "(1) to Create an Animal"
  puts "(2) to Create a Client"
  puts "(3) to Quit"
end

answer = "Wooooooo"

while answer != "3"
  main_menu
  answer = gets.chomp
  case answer
  when "1"
   ga_shelter.add_animal(create_animal)
  when "2"
    ga_shelter.add_client(create_client)
  when "3"
    break
  else
    puts "Please try again."
  end
end




