red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

puts "This is the red line: "
print red.join("---").chomp


puts "What stop will you board at?"
boarding_stop = gets.chomp.downcase.split(" ")

puts "What is your destination stop?"
destination_stop = gets.chomp.downcase.split(" ")

red.each do |station|
	station.count(boarding_stop..destination_stop)
end
