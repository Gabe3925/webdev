puts "Please enter a character"
char = gets.chomp
puts "How many rows would you like?"
rows = gets.to_i
for_num = -1
cRow = 0
puts "Would you like a reversed pyramid? (Y or N)"
reverse = gets.chomp.downcase
rev_num =  rows + (rows + 1)

while cRow < rows
  if (reverse == "y")
    puts ((char * (rev_num -= 2)).center(100))
  else
    puts (char * (for_num += 2)).center(100)
  end
  cRow += 1
end
