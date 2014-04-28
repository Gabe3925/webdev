require "pry"

require_relative "models/animal"
require_relative "models/client"
require_relative "models/shelter"

def get_valid_answer(question, valid_answers)
  # checks and validates if user input matches possible answers, 'valid_answers'
  # valid_answers can be an Array of possible answers or a regex string.

  puts question
  user_input = gets.chomp
  puts

  answer = case valid_answers
    # checks if string is a case-insensitive match or if numeric values are equal
    when Array then valid_answers.detect do |possible_answer|
      possible_answer.is_a?(String) ? possible_answer.casecmp(user_input) == 0 : possible_answer == user_input.to_f
    end
    when Regexp then user_input.match(valid_answers) { |match| match[0] }
  end

  if answer
    return answer
  else
    puts "Sorry, I didn't understand you."
    get_valid_answer(question, valid_answers)
  end
end

def get_user_selection(shelter)
  menu_text = []
  menu_text << "1. Add an animal to the shelter"
  menu_text << "2. Add a client to the shelter"
  menu_text << "3. Quit"
  menu_options = menu_text.collect { |line| line[0] }

  while true
    user_selection = get_valid_answer(menu_text, menu_options)
    case user_selection
    when "1" then launch_add_animal_wizard(shelter)
    when "2" then launch_add_client_wizard(shelter)
    when "3" then
      puts "Thanks for using our shelter app."
      break
    end
    binding.pry
  end
end

def launch_add_animal_wizard(shelter)
  name = get_valid_answer("What is the animal's name?", /.+/).split.map(&:capitalize).join(" ")
  species = get_valid_answer("What is #{name}'s species?", /.+/)
  shelter.animals << Animal.new(name, species)
end

def launch_add_client_wizard(shelter)
  name = get_valid_answer("What is the client's name?", /.+/).split.map(&:capitalize).join(" ")
  age = get_valid_answer("What is the #{name}'s age?", /.+/)
  shelter.clients << Client.new(name, age)
end

local_shelter = Shelter.new("DC Shelter")
get_user_selection(local_shelter)

# einstein_corgi = Animal.new("Einstein", "Corgi")
# yihsiao_client = Client.new("Yi-Hsiao", 29)

# local_shelter.animals << einstein_corgi
# local_shelter.adopt_pet(local_shelter.animals[0], yihsiao_client)
# local_shelter.return_pet(yihsiao_client.pets[0], yihsiao_client)
