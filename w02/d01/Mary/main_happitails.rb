

require_relative "HappiTails/ClientClass.rb"
require_relative "HappiTails/AnimalClass.rb"
require_relative "HappiTails/ShelterClass.rb"

def get_answer_to(question)
  puts question
  answer = gets.chomp
  return answer
end

shelter_01 = Shelter.new("Happi Tails")
puts "Welcome to Happi Tails Shelter!"
menu_choice = false
while menu_choice != "3"
  puts "What would you like to do? Please choose number from following:"
  puts "1. Create Animal"
  puts "2. Create Client"
  puts "3. Quit"
  menu_choice = gets.chomp
  if menu_choice == "1"
    shelter_01.add_animal
  elsif menu_choice == "2"
    shelter_01.add_client
  end

end
