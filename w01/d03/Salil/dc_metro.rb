require 'pry'
count = 0
count2 = 0


red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Judiciary Square', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange
while (count == 0)
  print "What line will you depart from: "
  strLine = gets.chomp.downcase
  if (strLine == "red")
    count = 1
    strKey = :red
    puts dc_metro[:red].join("\n")
  elsif (strLine == "turquoise")
    count = 1
    strKey = :turquoise
    puts dc_metro[:turquoise].join("\n")
  elsif (strLine == "orange")
    count = 1
    strKey = :orange
    puts dc_metro[:orange].join("\n")
  else
    puts "Please try again"
  end
end

start = " "
until (dc_metro.values.flatten.include?(start))
  print "Please enter the stop you will depart from: "
  start = gets.chomp
end

while (count2 == 0)
  print "\nWhat line will you arrive on: "
  stpLine = gets.chomp.downcase
  if (stpLine == "red")
    count2 = 1
    stpKey = :red
    puts dc_metro[:red].join("\n")
  elsif (stpLine == "turquoise")
    count2 = 1
    stpKey = :turquoise
    puts dc_metro[:turquoise].join("\n")
  elsif (stpLine == "orange")
    count2 = 1
    stpKey = :orange
    puts dc_metro[:orange].join("\n")
  else
    puts "Please try again"
  end
end

stop = " "
until (dc_metro.values.flatten.include?(stop))
  print "Please enter the stop you will arrive at: "
  stop = gets.chomp
end

strNum = dc_metro[strKey].index(start)
stopNum = dc_metro[stpKey].index(stop)

puts "You will travel #{(stopNum-strNum)} stops"




