require "pry"

red = ['woodley park', 'dupont circle', 'farragut north', 'metro center', 'union station']
turquoise = ['crystal city', 'metro center', 'shaw', 'beltwater']
orange = ['farragut west', 'mcpherson', 'metro center', 'federal triangle', 'smithsonian', "l'enfant plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

all_done = "n"
red_stops = 0
orange_stops = 0
turquoise_stops = 0

puts "\nWelcome to Metro.\n"



while all_done == "n"
  puts "\nWhich line are you taking?\n"
  puts dc_metro.keys
  line = gets.chomp.downcase
  if line == "red"
    puts "\nWhere are you getting on?\n"
    puts dc_metro[:red]
    red_on = gets.chomp.downcase

    puts "\nWhere are you getting off?\n"
    red_off = gets.chomp.downcase

    red_stops = (red.index(red_off) - red.index(red_on)).abs
    puts "You are going #{red_stops} stops on the red line. Weekend service expected."
  end
  if line == "orange"
    puts "\nWhere are you getting on?\n"
    puts dc_metro[:orange]
    orange_on = gets.chomp.downcase

    puts "\nWhere are you getting off?\n"
    orange_off = gets.chomp.downcase

    orange_stops = (orange.index(orange_off) - orange.index(orange_on)).abs
    puts "You are going #{orange_stops} stops on the orange line. Weekend service expected."
  end
  if line == "turquoise"
    puts "\nWhere are you getting on?\n"
    puts dc_metro[:turquoise]
    turquoise_on = gets.chomp.downcase

    puts "\nWhere are you getting off?\n"
    turquoise_off = gets.chomp.downcase

    turquoise_stops = (turquoise.index(turquoise_off) - turquoise.index(turquoise_on)).abs
    puts "You are going #{turquoise_stops} stops on the turquoise line. Weekend service expected."
  end


  puts "Are you done metroing? (y/n)"
  all_done = gets.chomp.downcase

  if all_done == "y"
    total_stops = red_stops + orange_stops + turquoise_stops
    puts "You are going #{total_stops} stops total. Please note: escalators are broken."
  end
end



