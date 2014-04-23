red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
# turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
# orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

# dc_metro = {}
# dc_metro[:red] = red
# dc_metro[:turquoise] = turquoise
# dc_metro[:orange] = orange

puts "Welcome to DC Metro! You will be travelling on the red line. The stops on the red line are " + red.join(", ") + ". Where would you like to start?"
start_trip = gets.chomp
puts "Where will you be getting off?"
end_trip = gets.chomp

puts "Your trip will be #{(red.index(start_trip) - red.index(end_trip)).abs} stops."


