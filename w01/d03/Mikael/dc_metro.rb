red = ['woodley park', 'dupont circle', 'farragut north', 'metro center', 'judiciary square', 'union station']
turquoise = ['crystal city', 'metro center', 'shaw-howard', 'beltwater']
orange = ['farragut west', 'mcpherson sq', 'metro center', 'federal triangle', 'smithsonian', "l'enfant plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange


puts "Welcome to the DC metro!"
puts "The stops on the red line are: " + dc_metro[:red].join(', ')
puts "Where would you like to go?"
dest = gets.chomp.downcase
puts "What stop are you getting on?"
start = gets.chomp.downcase

distance = (dc_metro[:red].index(dest) - dc_metro[:red].index(start)).abs
puts "That stop is #{distance} stops away."

