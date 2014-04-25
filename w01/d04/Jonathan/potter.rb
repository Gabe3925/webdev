require 'pry'





f = File.new("potter.csv", "r")

char_arr = []

f.each_line do |char_string|
  char_minus_new_line = char_string.chomp
  arr_representing_char = char_minus_new_line.split(',')
  character = {}
  character[:mentions] = arr_representing_char[0]
  character[:char] = arr_representing_char[1]
  character[:house] = arr_representing_char[2]
  char_arr << character

binding pry


end




