require_relative "Shelter.rb"
require_relative "Animal.rb"
require_relative "Client.rb"

in_operation = true
happitails = Shelter.new("Happitails")

while in_operation == true
  puts "Welcome to Happitails!"
  puts "Menu:"
  puts "(1) Create an animal"
  puts "(2) Create a client"
  puts "(q) Quit"
  answer = gets.chomp

  case answer
  when "1"
    puts "What is the animal's name?"
    pet_name = gets.chomp
    puts "What is the animal's species?"
    species = gets.chomp
    happitails.add_animal(pet_name, species)
  when "2"
    puts "What is the client's name?"
    client_name = gets.chomp
    puts "What is the client's age?"
    client_age = gets.chomp
    happitails.add_client(client_name, client_age)
  when "q"
    in_operation = false
  end
end

