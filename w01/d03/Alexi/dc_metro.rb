

red = ['woodley park', 'dupont circle', 'farragut north', 'metro center', 'judiciary square', 'union station']
turquoise = ['crystal city', 'cetro center', 'shaw-howard', 'beltwater']
orange = ['farragut west', 'mcpherson square', 'metro center', 'federal friangle', 'smithsonian', "l'enfant plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

puts "The following are the RED LINE metro stops: "
puts "1. Woodley Park"
puts "2. Dupont Circle"
puts "3. Farragut North"
puts "4. Metro Center"
puts "5. Judiciary Square"
puts "6. Union Station"

puts "Please select your initial stop"
  fstop = gets.chomp.downcase
puts "Please select your last stop (1-6)"
  lstop = gets.chomp.downcase


fvar = red.index(fstop)
lvar = red.index(lstop)

#Can't figure out why this won't return the index number. It should be
#captured by red.index(fstop/lstop)
puts "#{fvar}"
puts "#{lvar}"
