puts "Enter a character."
char = gets.chomp
puts "How many rows would you like in your pyramid?"
rows = gets.to_i
puts "Would you like it to be upside down? (y/n)"
topsy = gets.chomp.downcase
count = 1
rowcount = 1

if topsy == "y"
  while count <= rows
    puts char * (rows - (count + 2))
    rowcount += 1
  end
elsif topsy == "n"
  while count <= rows
    puts char * (count + 2)
    rowcount += 1
  end
end
