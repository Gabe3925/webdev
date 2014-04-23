require "pry"

red = ['woodley park', 'dupont circle', 'farragut north', 'metro center', 'union station']
turquoise = ['crystal city', 'metro center', 'shaw', 'beltwater']
orange = ['farragut west', 'mcpherson', 'metro center', 'federal triangle', 'smithsonian', "l'enfant plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

puts "\nWelcome to Metro.\n"

puts "\nWhere are you getting on?\n"
puts dc_metro[:red]
red_on = gets.chomp.downcase

puts "\nWhere are you getting off?\n"
puts dc_metro[:red]
red_off = gets.chomp.downcase

red_stops = (red.index(red_off) - red.index(red_on)).abs



puts "You are going #{red_stops} stops. Please note: escalators are broken."


