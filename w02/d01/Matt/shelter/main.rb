require "pry"
require_relative 'models/animal.rb'
require_relative 'models/client.rb'
require_relative 'models/shelter.rb'
# require_relative 'models/seeds.rb'

# class
#   def initialize
#     @name = ''
#   end
# end

def add_detail(item)
  puts item
  value = gets.chomp
  return value
end

all_animals = []
menu_answer = 0

###create shelter
def add_shelter
  #get shelter name
  shelter_name = add_detail("What is the shelter's name?")
  #add shelter name
  $shelter = Shelter.new(shelter_name)
end

###shelter menu
def shelter_menu
  puts ""
  puts "Welcome to #{$shelter.shelter_name}"
  puts "(1) Add an animal to the shelter"
  puts "(2) Add a client to the shelter"
  puts "(3) View all animals"
  puts "(4) View all clients"
  puts "(5) Adopt an animal"
  puts "(6) Get rid of a pet!"
  puts "(7) Quit"
  puts ""
end

add_shelter
while menu_answer != '7'
  #create shelter
  #display shelter menu
  shelter_menu
  menu_answer = gets.chomp
  case menu_answer
  when '1'
    ###add animal
    new_animal = $shelter.add_animal
  when '2'
    ###add client
    new_client = $shelter.add_client
  when '3'
    ###all animals
    show_all_animals = $shelter.show_all_animals
  when '4'
    ###all clients
    show_all_clients = $shelter.show_all_clients
  when '6'
    ###give away pet
    give_away_pet = $shelter.give_away_pet
  else
  end
  # binding.pry
end

# binding.pry

# animal1 = Animal.new("Rolf", "Dog", "Bone")
# all_animals << animal1


# binding.pry

# shelter = add_shelter(all)
# puts shelter

# client = add_client(all_animals)
# puts client

# animal = add_animal(all_animals)
# puts animal

# binding.pry
# end
