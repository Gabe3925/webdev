require 'csv'
require 'pry'

# Write a method that does each of the following:

# 1. Return an array with just the names of all the characters
# use a hash

def create_name_array
  f = File.new("potter.csv", "r")
  character_array = []
  f.each_line do |character|
    character_info = character.chomp.split(",")
    character_array.push(character_info[1])
  end
  return character_array
  f.close
end

create_name_array


# * Return an array with all the characters with more than 500 mentions. Each entry in the array should contain all information about that character. (ie `{:mentions=>18956, :name=>"Harry Potter", :house=>"Gryffindor"}`)

def most_mentioned_characters
  f = File.new("potter.csv", "r")
  most_mentioned_array = []
  f.each_line do |character|
    character_info = character.chomp.split(",")
    if character_info[0].to_i > 500
      most_mentioned_array.push(character)
   end
  end
  return most_mentioned_array
  f.close
end

most_mentioned_characters

# * Return an array with the names of all the houses. `["Gryffindor", "Slytherin", "Ravenclaw", "Hufflepuff"]`

def display_houses
  f = File.new("potter.csv", "r")
  house_array = []
  f.each_line do |character|
    character_info = character.chomp.split(",")
    house_array.push(character_info[2])
  end
  return house_array.uniq
  f.close
end

display_houses

# * Return an array with all the characters with one word names. Each entry in the array should contain all information about that character. (ie `{:mentions=>1797, :name=>"Voldemort", :house=>"Slytherin"}`)
# * Return the number of characters from Hufflepuff (Hint: It should be 3)
# * Return an array with all of the character names, but for the characters from Slytherin, reverse their names (ie "Draco Malfoy" becomes "yoflaM ocarD")
# * Return an array with the unique last names of all the characters from Gryffindor (ie, print Weasley only 1 one time)
# * Return an array with the names of all the Weasleys, but give each of them a middle name of "Badger"
# * Return an array with the first names of characters whose first names end in "y"
