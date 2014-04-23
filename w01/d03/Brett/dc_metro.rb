# Steps to find number of stops between Woodley Park (red) and Beltwater (turquoise)
# 1) need to number each station's distance from Metro Center
# 2) Woodley Park would be 3 and Beltwater would be 2
# 3) take  value and add together to get 5 stops

red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

# method to display menu based on line color and calculate stops
def line_menu(line)
  puts "Stops on this line: #{line}"
#   if line
#   line.each do |i|
#     puts i
# end

  puts "What stop are you departing at? (case-sensitive)"
  departure = gets.chomp

  puts "What stop are you arriving at? (case-sensitive)"
  arrival = gets.chomp

  return (line.index(departure) - line.index(arrival)).abs # the number of stops in the trip
end

# Determine what line the rider wants to ride.
puts "What line do you want to get on?"
puts "- Red"
puts "- Turquoise"
puts "- Orange"
line = gets.chomp.downcase

if line == "red"
    puts "Your trip is #{line_menu(red)} stops."
  elsif line == "turquoise"
    puts "Your trip is #{line_menu(turquoise)} stops."
  elsif line == "orange"
    puts "Your trip is #{line_menu(orange)} stops."
  else
    puts "That's not a metro line."
end
