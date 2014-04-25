require 'pry'

file = File.new("potter.csv", "r")

char_arr = []

# I want to create an array of all the characters in HP who are mentioned
# more than 500 times.

file.each_line do |character_string|
  char_minus_new_line = character_string.chomp
  arr_representing_char = char_minus_new_line.split(',')
  character = {}
  character[:mentions] = arr_representing_char[0]
  character[:name] = arr_representing_char[1]
  character[:house] = arr_representing_char[2]
  if character[:mentions].to_i > 500
    char_arr << character
  end
end




binding.pry

