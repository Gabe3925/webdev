require 'pry'

require_relative "HappiTails/client"
require_relative "HappiTails/animal"
require_relative "HappiTails/shelter"

def get_answer_to(question)
  puts question
  answer = gets.chomp
  return answer
end

shelter_01 = Shelter.new("Happi Tails")
puts "Welcome to Happi Tails Shelter!"
menu_choice = false
while menu_choice != "5"
  puts "What would you like to do? Please choose number from following:"
  puts "1. Create Animal"
  puts "2. Create Client"
  puts "3. Display All Animals"
  puts "4. Display All Clients"
  puts "5. Quit"
  menu_choice = gets.chomp
  case menu_choice
  when "1"
    shelter_01.add_animal
  when "2"
    shelter_01.add_client
  when "3"
    puts shelter_01.animals
  when "4"
    puts shelter_01.clients
  end
end