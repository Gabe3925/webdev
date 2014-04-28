
class Shelter
	attr_accessor :name
	attr_accessor :animals
	attr_accessor :clients
	def initialize (name)
		@name = name
		@animals = []
		@clients = []
	end

	def has_animals?
		if animals.size > 0
			return true
		else
			return false
		end
	end

	def has_clients?
		if clients.size > 0
			return true
		else
			return false
		end
	end

	def list_animals
		if self.has_animals?
			puts "Animals:"
			animals.each{|instance|
				puts "#{instance.name} --> #{instance.species}"}
		else
			puts "There are currently no animals."
		end
	end

	def list_clients
		if self.has_clients?
			puts "Clients:"
			clients.each{ |instance|
				puts "#{instance.name}"}
		else
			puts "There are currently no clients."
		end
	end

	def create_an_animal
	puts "What is the animals name?"
	name = gets.chomp
	puts "What is the animals species?"
	species = gets.chomp
	new_animal = Animal.new(name, species)
	puts "Does the animal have any toys? (y/n)"
	answer = gets.chomp
	while answer != "n"
		puts "What is the toy?"
		toy = gets.chomp
		new_animal.toys << toy
		puts "Are there any more toys? (y/n)"
		answer = gets.chomp
	end
	return new_animal
	end

	def create_a_client
	puts "What is the clients name?"
	name = gets.chomp
	puts "What is the clients age?"
	age = gets.chomp
	new_client = Client.new(name, age)
	puts "Does the client have any pets? (y/n)"
	answer = gets.chomp
	while answer != "n"
		
		#binding.pry
		new_client.pets << self.create_an_animal
		puts "Does the client have any more pets? (y/n)"
		answer = gets.chomp
	end
	return new_client
end
end
