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
#while answer != "3"
puts ""
puts "What would you like to do? (Choose Number)"
puts "1. Create an Animal"
puts "2. Create a Client"
puts "3. Quit"
puts ""

answer = gets.chomp

case answer
when "1"
  happitails.add_animal
when "2"
  happitails.add_client
when "3"
  puts "Goodbye"
else

end




binding.pry
