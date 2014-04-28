require 'pry'

require_relative './Client'
require_relative './Shelter'
require_relative './Animals'


#============================#
#======Helper Variables======#
#============================#

# Gathers input for menu
def get_answer_to(question)
  puts question
  answer = gets.chomp
  return answer
end


#============================#
#=======Instantiation========#
#============================#

# Birth of shelter --> instnace
shelter = Shelter.new("HappiTails")
animals_list = shelter.animals()


# Birth of client --> instance
client = Clients.new()
client_list = shelter.client()

#============================#
#============Menu============#
#============================#

def menu_options
  puts ""
  puts "HappiTails v1.0, Copyright 1993"
  puts ""
  puts "Enter the NUMBER from the list of actions below:"
  puts ""
  puts "1. Add animal to shelter"
  puts "2. Add client"
  puts "3. Quit"
  puts ""
end

answer = "arbitrary string!"

while answer != '3' #String or integer?
  menu_options
  answer = gets.chomp
  case answer
  when '1'
    puts "Please enter the following information about the new animal:"
    shelter.add_animal()
binding.pry
  when '2'
    puts "Please enter the new client\'s name:"

  when '3'
    puts " "
    puts "Exiting..."
    puts " "
  else
    puts "Invalid entry"
  end

end

