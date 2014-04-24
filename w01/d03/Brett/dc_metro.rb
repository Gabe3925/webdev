# Steps to find number of stops between Woodley Park (red) and Beltwater (turquoise)
# 1) need to number each station's distance from Metro Center
# 2) Woodley Park would be 3 and Beltwater would be 2
# 3) take  value and add together to get 5 stops

red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Judiciary Square' 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

count_1 = false
count_2 = false

while count_1 == false
  puts "What line do you want to get on?"
  puts "- Red"
  puts "- Turquoise"
  puts "- Orange"
  start_line = gets.chomp.downcase

  if start_line == "red"
    departure_key = :red
    puts dc_metro[:red].join("\n")
    count_1 = true
  elsif start_line == "turquoise"
    departure_key = :turquoise
    puts dc_metro[:turquoise].join("\n")
    count_1 = true
  elsif start_line == "orange"
    departure_key = :orange
    puts dc_metro[:orange].join("\n")
    count_1 = true
  else
    puts "That's not a metro line."
  end
end

start = " "
until (dc_metro[start_key].include?(start))
  print "Please enter the stop you will depart from: "
  start = gets.chomp
end

while count_2 == false
  puts "What line will you finish at?"
  puts "- Red"
  puts "- Turquoise"
  puts "- Orange"
  end_line = gets.chomp.downcase

  if end_line == "red"
    end_line = :red
    puts dc_metro[:red].join("\n")
    count_1 = true
  elsif end_line == "turquoise"
    end_line = :turquoise
    puts dc_metro[:turquoise].join("\n")
    count_1 = true
  elsif end_line == "orange"
    end_line = :orange
    puts dc_metro[:orange].join("\n")
    count_1 = true
  else
    puts "That's not a metro line."
  end
end

stop = " "
until (dc_metro[stop_key].include?(stop))
  print "Please enter the stop you will arrive at: "
  stop = gets.chomp
end

start_num = dc_metro[start.key].index(start)
stop_num = dc_metro[stop.key].index(stop)

if (start_line != stop_line)
  start_num = ((start_num - dc_metro[start_key].index("Metro Center")).abs)
  stop_num = ((stop_num - dc_metro[stop_key].index("Metro Center")).abs)
  puts "Your trip is #{((stop_num-start_num).abs)} stops."
end

# # method to display menu based on line color and calculate stops
# def line_menu(start_line)
#   puts "Stops on this line: #{dc_metro.values}"

#   puts "What stop are you departing at? (case-sensitive)"
#   departure = gets.chomp

#   puts "What stop are you arriving at? (case-sensitive)"
#   arrival = gets.chomp

#   return (start_line.index(departure) - start_line.index(arrival)).abs # the number of stops in the trip
# end

# # Determine what line the rider wants to ride.
# puts "What line do you want to get on?"
# puts "- Red"
# puts "- Turquoise"
# puts "- Orange"
# line = gets.chomp.downcase

# if line == "red"
#     puts "Your trip is #{line_menu(red)} stops."
#   elsif line == "turquoise"
#     puts "Your trip is #{line_menu(turquoise)} stops."
#   elsif line == "orange"
#     puts "Your trip is #{line_menu(orange)} stops."
#   else
#     puts "That's not a metro line."
# end
