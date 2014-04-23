red = ['woodley park', 'dupont circle', 'farragut north', 'metro center', 'union station']
turquoise = ['crystal city', 'metro center', 'shaw-howard', 'beltwater']
orange = ['farragut west', 'mcpherson sq', 'metro center', 'federal triangle', 'smithsonian', "l'enfant plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange


puts "Here are all the stops on the Red Line: #{red}"
puts "At which of these stops would you like to get on?"
red_on = gets.chomp.downcase
puts "At which of these stops would you like to get off?"
red_off = gets.chomp.downcase

def red_distance(on, off)
  distance = (dc_metro[:red].index(on) - dc_metro[:red].index(off)).abs
  return distance
end

red_trip_distance = red_distance(red_on, red_off)

puts "Your trip has #{red_trip_distance} stops."
