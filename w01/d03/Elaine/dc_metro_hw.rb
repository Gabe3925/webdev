red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Judiciary Square', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

puts ""
puts "Which line do you want to get on?"
puts "\"red\""
puts "\"turquoise\""
puts "\"orange\""

starting_line = gets.chomp.downcase

puts ""
puts "Here are the list of stops on the #{starting_line} line:"
puts red.join", "

puts ""
puts "Enter the stop you want to get on at."
starting_station = gets.chomp.downcase

puts ""
puts "Enter the stop you want to get off at."
ending_station = gets.chomp.downcase

stops_to_center = 0

case starting_station

when "woodley park"
  stops_to_center = 3
when "dupont circle"
  stops_to_center = 2
when "farragut north"
  stops_to_center = 1
when "metro center"
  stops_to_center = 0
when "judiciary square"
  stops_to_center = 1
when "union station"
  stops_to_center = 2

end

stops_from_center = 0

case ending_station

when "woodley park"
  stops_from_center = 3
when "dupont circle"
  stops_from_center = 2
when "farragut north"
  stops_from_center = 1
when "metro center"
  stops_from_center = 0
when "judiciary square"
  stops_from_center = 1
when "union station"
  stops_from_center = 2

end

total_stops = stops_to_center + stops_from_center

puts ""
puts "Your trip will have #{total_stops} stops."

