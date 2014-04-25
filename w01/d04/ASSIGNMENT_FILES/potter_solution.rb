require 'pry'
characters = []

file = File.new("potter.csv", "r")

file.each_line do |character|
  character_hash = {}
  entry_values = character.chomp.split(',')
  character_hash[:mentions] = entry_values[0]
  character_hash[:name] = entry_values[1]
  character_hash[:house] = entry_values[2] || "N/A"
  characters << character_hash
end

alliterative_characters = characters.select do |char|
                            name = char[:name]
                            array_of_first_last_name = name.split(' ')
                            binding.pry
                            if array_of_first_last_name.length > 1
                              first_name = array_of_first_last_name[0]
                              last_name = array_of_first_last_name[-1]
                              first_name[0] == last_name[0]
                            end
                          end

binding.pry
