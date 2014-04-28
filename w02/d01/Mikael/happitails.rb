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


def prompt_user(query)
  puts query
  return gets.chomp.downcase
end

def new_animal(shelter)
  name = prompt_user("What is the animal's name?").downcase
  species = prompt_user("What species of the animal?").downcase
  new_animal = Animal.new(name, species)
  shelter.add_animal(new_animal)
  puts "You created #{new_animal.name.capitalize} the #{new_animal.species.capitalize}."
end

def new_client(shelter)
  name = prompt_user("What is the client's name?").downcase
  age = prompt_user("How old is the client?")
  new_client = Client.new(name, age)
  shelter.add_client(new_client)
  puts "You created #{new_client.name.capitalize}."
end

def adoption(shelter)
  shelter.animals.each_with_index do |animal, i|
      puts "Animal #{i + 1}: #{animal.name} the #{animal.species}"
    end
    adoptee = prompt_user("Please enter the number of the animal you would like to adopt.").to_i

    shelter.clients.each_with_index do |client, i|
      puts "Client #{i + 1}: #{client.name}"
    end
    adopter = prompt_user("Please enter the number of the client who is adopting this animal.").to_i
    shelter.adopt_animal(shelter.clients[adopter - 1], shelter.animals[adoptee - 1])

    puts "#{shelter.clients[adopter - 1].name} adopted #{shelter.clients[adopter - 1].pets.last}!"
end

def rejection(shelter)
  shelter.clients.each_with_index do |client, i|
      puts "Client #{i + 1}: #{client.name}"
    end
    rejecter = prompt_user("Please enter the number of the client who is  putting an animal up for adoption.").to_i

  shelter.clients[rejecter - 1].pets.each_with_index do |pet, i|
    puts "Pet #{i + 1}: #{pet.name} the #{pet.species}"
  end
  rejectee = prompt_user("Please enter the number of the animal that is being returned to the shelter.").to_i
  shelter.return_animal(shelter.clients[rejecter - 1], shelter.clients[rejecter - 1].pets[rejectee - 1])

  puts "#{shelter.animals.last.name} was returned to the shelter. #{shelter.clients[rejecter - 1].name} no longer owns this pet."
end


puts "Welcome to #{fosters.name}!"
while true
  puts "You may create an [animal], create a [client], display all [animals], display all [clients], [adopt] an animal, put an animal up for [adoption] or [quit]."
  input = prompt_user("What would you like to do?")
  break if input == "quit"

  case input
  when "animal"
    new_animal(fosters)
  when "client"
    new_client(fosters)
  when "animals"
    puts "We currently hold #{fosters.animals.join(", ")}."
  when "clients"
    puts "We currently work with #{fosters.clients.join(", ")}."
  when "adopt"
    adoption(fosters)
  when "adoption"
    rejection(fosters)
  else
    puts "That is not a valid option."
  end

end

puts "Goodbye!"
