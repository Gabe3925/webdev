require 'pry'

require_relative 'models/Animal'
require_relative 'models/Client'
require_relative 'models/Shelter'

dog1 = Animal.new("Fido", "Dog")
dog1.toys.push("Tennis Ball","Frisbee")
cat1 = Animal.new("Fluffy", "Cat")
cat1.toys.push("'Nip", "Dead Mouse")

totally_legit_shelter = Shelter.new("Totally Legit Animals")
totally_legit_shelter.animals.push(dog1, cat1)

def list_options
puts "Please select an option:"
puts "0 --> Quit"
puts "1 --> Create an Animal"
puts "2 --> Create a Client"
puts "3 --> View a List of Animals"
puts "4 --> View a List of Clients"
end































menu_answer = ""
puts "Welcome to #{totally_legit_shelter.name}"
while menu_answer != "0"

	list_options
	menu_answer = gets.chomp
	case menu_answer
	when "1"
		totally_legit_shelter.animals << totally_legit_shelter.create_an_animal
	when "2"
		totally_legit_shelter.clients << totally_legit_shelter.create_a_client
	when "3"
		totally_legit_shelter.list_animals
	when "4"
		totally_legit_shelter.list_clients
	end
end










# def adoption
# 	self.animals.each do |animal|
# 		puts "#{animal.name}"
# 	end
# end
