require 'pry'

require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'
require_relative 'models/seeds'


# Menu

def menu_options
  puts ""
  puts "Enter a NUMBER from the following list of acitons:"
  puts "1. Create an animal"
  puts "2. Create a client"
  puts "3. Quit"
end

answer = "0"

while answer !=3
  menu_options
  answer = gets.chomp
  case answer
  when "1"
  when "2"
  when "3"
    puts "Thanks, and goodbye!"
  end

end



binding.pry
