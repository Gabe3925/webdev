puts "What is the current temp?"
user_input = gets.to_i
puts "Is the A/C functional? (Answer y or n)"
user_input2 = gets.chomp.downcase
puts "What temp do you wish it was?"
user_input3 = gets.to_i

if user_input2 == "y" && user_input >= user_input3
  puts "Turn on the A/C please"
elsif user_input2 == "n" && user_input >= user_input3
  puts "Fix the A/C"
else
  puts "Fix A/C when you have a minute."
end
