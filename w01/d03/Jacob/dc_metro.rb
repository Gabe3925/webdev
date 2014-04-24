require 'pry'

red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

def cap(string)
  string.split(" ").map(&:capitalize).join(" ")
end

puts "Hi, welcome to the metro."
puts "Which line would you like to get on?"
on_color = gets.chomp.downcase
puts "Here are all of the stops on the #{on_color} line:"
case on_color
  when "red"
    puts red
  when "turquoise"
    puts turquoise
  when "orange"
    puts orange
  else
    puts "This line doesn't exist."
end
puts "Which stop would you like to get on?"
on_stop = gets.chomp.downcase
on = cap(on_stop)
puts "Which line would you like to get off?"
off_color = gets.chomp.downcase
puts "Here are all of the stops on the #{off_color} line: "
case off_color
  when "red"
    puts red
  when "turquoise"
    puts turquoise
  when "orange"
    puts orange
  else
    puts "This line doesn't exist."
end
puts "Which stop would you like to get off?"
off_stop = gets.chomp.downcase
off = cap(off_stop)

if on_color == "red" && off_color == "red"
  this_many = (dc_metro[:red].index(on).to_i-dc_metro[:red].index(off).to_i).abs
  puts "Your trip will have #{this_many} stops."

elsif on_color == "orange" && off_color == "orange"
  this_many = (dc_metro[:orange].index(on).to_i-dc_metro[:orange].index(off).to_i).abs
  puts "Your trip will have #{this_many} stops."

elsif on_color == "turquoise" && off_color == "turquoise"
  this_many = (dc_metro[:turquoise].index(on).to_i-dc_metro[:turquoise].index(off).to_i).abs
  puts "Your trip will have #{this_many} stops."

elsif on_color == "red" && off_color == "orange"
  on_pos = dc_metro[:red].index(on).to_i
  junc_pos = dc_metro[:red].index("Metro Center").to_i
  this_many = (dc_metro[:red].index(on).to_i-dc_metro[:red].index("Metro Center").to_i).abs + (dc_metro[:orange].index(off).to_i-dc_metro[:orange].index("Metro Center").to_i).abs
  puts "Your trip will have #{this_many} stops."

elsif on_color == "red" && off_color == "turquoise"
  this_many = (dc_metro[:red].index(on).to_i-dc_metro[:red].index("Metro Center").to_i).abs + (dc_metro[:turquoise].index(off).to_i-dc_metro[:turquoise].index("Metro Center").to_i).abs
  puts "Your trip will have #{this_many} stops."

elsif on_color == "orange" && off_color == "red"
  this_many = (dc_metro[:orange].index(on).to_i-dc_metro[:orange].index("Metro Center").to_i).abs + (dc_metro[:red].index(off).to_i-dc_metro[:red].index("Metro Center").to_i).abs
  puts "Your trip will have #{this_many} stops."

elsif on_color == "orange" && off_color == "turquoise"
  this_many = (dc_metro[:orange].index(on).to_i-dc_metro[:orange].index("Metro Center").to_i).abs + (dc_metro[:turquoise].index(off).to_i-dc_metro[:turquoise].index("Metro Center").to_i).abs
  puts "Your trip will have #{this_many} stops."

elsif on_color == "turquoise" && off_color == "red"
  this_many = (dc_metro[:turquoise].index(on).to_i-dc_metro[:turquoise].index("Metro Center").to_i).abs + (dc_metro[:red].index(off).to_i-dc_metro[:red].index("Metro Center").to_i).abs
  puts "Your trip will have #{this_many} stops."

elsif on_color == "turquoise" && off_color == "orange"
  this_many = (dc_metro[:turquoise].index(on).to_i-dc_metro[:turquoise].index("Metro Center").to_i).abs + (dc_metro[:orange].index(off).to_i-dc_metro[:orange].index("Metro Center").to_i).abs
  puts "Your trip will have #{this_many} stops."

end

