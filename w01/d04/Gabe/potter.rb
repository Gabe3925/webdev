#potty = File.new("potter.csv", "r") 
#potty.to_a.map.each {|row| row.to_hash }

#puts potty
animal_data = []
f = File.new("potter.csv", "r") #read only File
f.each_line do |line| 
characters = line.chomp.split(", ")
puts characters[1]
puts characters[0]
end
f.close