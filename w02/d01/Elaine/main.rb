# require 'pry'

require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'
require_relative 'models/seeds'

# Instantiates a shelter
happi_tails = Shelter.new("HappiTails")

# Helpful Methods

def get_answer_to(question)
  puts ""
  puts question
  answer = gets.chomp
  return answer
end


# Menu

def menu_options
  puts ""
  puts "Enter a NUMBER from the following list of actions:"
  puts "1. Create an animal"
  puts "2. Create a client"
  puts "3. Display all animals"
  puts "4. Display all clients"
  puts "5. Quit"
end

answer = "0"

while answer != "5"
  menu_options
  answer = gets.chomp
  case answer
  when "1"
    happi_tails.add_animal


  when "2"
    happi_tails.add_client

  # Displays all animals
  when "3"

    happi_tails.list_animals

  # Displays all clients
  when "4"

    happi_tails.list_clients

  when "5"
    puts "Thanks, and goodbye!"
  else
    puts "You didn't enter a valid selection."
  end

end

# binding.pry

