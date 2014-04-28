require 'pry'

require_relative 'animal.rb'
require_relative 'client.rb'
require_relative 'shelter.rb'

mike = Client.new("Mikael", 23)
gretch = Animal.new("Gretchen", "dog")
lex = Animal.new("Alexis", "dog")
fosters = Shelter.new("Foster's Home for Imaginary Friends")

fosters.add_client(mike)
fosters.add_animal(gretch)
fosters.add_animal(lex)

fosters.adopt_animal(mike, gretch)

puts "Mike now owns #{mike.pets}"
puts "Fosters holds #{fosters.animals}"

fosters.return_animal(mike, gretch)

puts "Fosters now holds #{fosters.animals}"


