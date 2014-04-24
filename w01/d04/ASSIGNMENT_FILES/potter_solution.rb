require 'pry'
characters = []

file = File.new("potter.csv", "r")

file.each do |character|
  character_hash = {}
  entry_values = character.chomp.split(',')
  character_hash[:mentions] = entry_values[0]
  character_hash[:name] = entry_values[1]
  character_hash[:house] = entry_values[2] || "N/A"
  characters << character_hash
end

binding.pry
