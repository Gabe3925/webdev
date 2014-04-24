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
puts "Which line do you want to get off at? (red/turquoise/orange)"
ending_line = gets.chomp.downcase

puts ""
puts "Here are the list of stops on the #{ending_line} line:"
puts red.join", "
puts ""
puts "Enter the stop you want to get off at."
ending_station = gets.chomp.downcase

distance_to_center = {
  "woodley park" => 3,
  "dupont circle" => 2,
  "farragut north" => 1,
  "metro center" => 0,
  "judiciary square" => 1,
  "union station" => 2,

  "beltwater" => 2,
  "shaw-howard" => 1,
  "crystal city" => 1,

  "farragut west" => 2,
  "mcpherson square" => 1,
  "federal triangle" => 1,
  "smithsonian" => 2,
  "l'enfant plaza" => 3
}


stops_to_center = distance_to_center[starting_station]
stops_from_center = distance_to_center[ending_station]



total_stops = stops_to_center + stops_from_center

puts ""
puts "Your trip will have #{total_stops} stops."

