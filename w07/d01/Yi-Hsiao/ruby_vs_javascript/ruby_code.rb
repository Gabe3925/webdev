# this is a comment

=begin
  this is a
  block comment
=end

# variable assignment
variable = "value"
puts variable

# conditionals
number = 10
if number > 5
  puts "It's greater than 5."
elsif number < 5
  puts "It's less than 5."
else
  puts "It's equal to 5."
end

# case statement
day = "Saturday";
case day
when "Monday"
  puts "The workweek is starting."
when "Wednesday"
  puts "Halfway through the workweek."
when "Friday"
  puts "The workweek is almost over."
when "Saturday", "Sunday"
  puts "It's the weekend!"
else
  puts "Keep on trucking."
end

# while loop
count = 10
while count > 0
  puts count
  count -= 1
end