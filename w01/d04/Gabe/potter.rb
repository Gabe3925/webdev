								#potty = File.new("potter.csv", "r") 
								#potty.to_a.map.each {|row| row.to_hash }
								
								#puts potty
potty = {}
f = File.new("potter.csv", "r") #read only File
f.each_line do |line| 
characters = line.chomp.split(",")

mentions = characters[0]
persons = characters[1]
houses = characters[2]

							#puts persons
							
							#potter_characters_hash = Hash[characters.map {|num, person, house| [num]=>num: [person]=>person: [house]=>house: }]
							#puts "potter_characters_hash: #{potter_characters_hash.inspect}"
							
							#potter_characters_hash = Hash[characters.map {|value, key| [key, value]}]
							#puts "potter_characters_hash: #{potter_characters_hash.inspect}"
							#puts potter_characters_hash

bub = Hash[numbers: mentions, dudes: persons, houses: houses]  
puts bub[:dudes]


end

f.close

								#names_only = characters.each {|num, name, house| puts name}
								#puts names_only


