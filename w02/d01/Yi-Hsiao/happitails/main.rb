require "pry"

require_relative "models/animal"
require_relative "models/client"
require_relative "models/shelter"
require_relative "models/cat_lady"

require_relative "models/seed"

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
  # quit is always the last option in the menu
  menu = [
    {command: "launch_add_animal_wizard", menu_text: "Add an animal to the shelter"},
    {command: "launch_add_client_wizard", menu_text: "Add a potential client"},
    {command: "display_all_animals", menu_text: "Display all animals"},
    {command: "display_all_clients", menu_text: "Display all clients"},
    {command: "shelter.adopt_pet", menu_text: "Adopt an animal"},
    {command: "shelter.return_pet", menu_text: "Put an animal up for adoption"},
    {command: "quit", menu_text: "Quit"}
  ]

  menu_text = menu.each_with_index.map { |option, idx| "#{idx + 1}. #{option[:menu_text]}" }
  menu_options = (1..menu.length).to_a

  while true
    user_selection = get_valid_answer(menu_text, menu_options)
    break if user_selection == menu.length                      # quit option
    send( menu[user_selection - 1][:command], shelter )
    puts
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

def display_all_animals(shelter)
  if shelter.animals.length > 0
    puts "Here are all our shelter's available pets:"
    puts "* " + shelter.animals.join("\n* ")
  else
    puts "There are no available pets at this time."
  end
end

def display_all_clients(shelter)
  if shelter.clients.length > 0
    puts "Here are all our shelter's clients:"
    puts "* " + shelter.clients.join("\n* ")
  else
    puts "There are no clients at this time."
  end
end

get_user_selection($local_shelter)
