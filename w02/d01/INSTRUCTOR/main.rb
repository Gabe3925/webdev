require 'pry'
require_relative 'shelter'

happitails = Shelter.new("Happitails Animal Shelter")

def get_answer_to(question)
  puts question
  answer = gets.chomp
end

#==================================================
# Menu
#==================================================
answer = 42
while answer != "7"
  puts ""
  puts "What would you like to do? (Choose Number)"
  puts "1. Create an Animal"
  puts "2. Create a Client"
  puts "3. Display all animals"
  puts "4. Display all clients"
  puts "5. Facilitate adoption"
  puts "6. Facilitate abandonment"
  puts "7. Quit"
  puts ""
  answer = gets.chomp

  case answer
  when "1"
    happitails.add_animal
  when "2"
    happitails.add_client
  when "3"
    puts ""
    puts "Here are the names of all your animals:"
    puts ""
    happitails.display_all_animals
  when "4"
    puts ""
    puts "Here are the names of all your clients:"
    puts ""
    happitails.display_all_clients
  when "5"
    happitails.facilitate_adoption
  when "6"
    happitails.facilitate_abandonment
  else
    puts "Your input was invalid"
  end
end




binding.pry
