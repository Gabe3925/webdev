require 'pry'

require_relative 'animal.rb'
require_relative 'client.rb'
require_relative 'shelter.rb'

mike = Client.new("Mikael", 23)
gretch = Animal.new("Gretchen", "dog")
lex = Animal.new("Alexis", "dog")
fosters = Shelter.new("Foster's Home for Imaginary Friends")


=begin
fosters.add_client(mike)
fosters.add_animal(gretch)
fosters.add_animal(lex)

fosters.adopt_animal(mike, gretch)

puts "Mike now owns #{mike.pets}"
puts "Fosters holds #{fosters.animals}"

fosters.return_animal(mike, gretch)

puts "Fosters now holds #{fosters.animals}"

=end

def prompt_user(query)
  puts query
  return gets.chomp.downcase
end

def new_animal(shelter)
  name = prompt_user("What is the animal's name?")
  species = prompt_user("What species of the animal?")
  new_animal = Animal.new(name, species)
  shelter.add_animal(new_animal)
  puts "You created #{new_animal.name.capitalize} the #{new_animal.species.capitalize}."
end

def new_client(shelter)
  name = prompt_user("What is the client's name?")
  age = prompt_user("How old is the client?")
  new_client = Client.new(name, age)
  shelter.add_client(new_client)
  puts "You created #{new_client.name.capitalize}."
end


puts "Welcome to #{fosters.name}!"
while true
  puts "You may create an [animal], create a [client], or [quit]."
  input = prompt_user("What would you like to do?")
  break if input == "quit"

  case input
  when "animal"
    new_animal(fosters)
  when "client"
    new_client(fosters)
  end

end

puts "Goodbye!"

