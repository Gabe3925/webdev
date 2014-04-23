
another = "Y"

while another == "Y"
  puts "What calculator operation would you like to perform? Your choices are +, -, *, /, exp, or sqrt"
  operation = gets.chomp

  puts "Please enter the first value you'd like to use in calculation."
  val1 = gets.to_i
  puts "Please enter the second value you'd like to use in calculation. If calculating square root, just press enter."
  val2 = gets.to_i

  if operation == "+"
    puts "Answer is " + (val1 + val2).to_s
  elsif operation == "-"
    puts "Answer is " + (val1 - val2).to_s
  elsif operation == "*"
    puts "Answer is " + (val1 * val2).to_s
  elsif operation == "/"
    puts "Answer is " + (val1 / val2).to_s
  elsif operation == "exp"
    puts "Answer is " + (val1 ** val2).to_s
  elsif operation == "sqrt"
    puts "Answer is " + Math.sqrt(val1).to_s
  end

  puts "Would you like to do another calculation? Type Y to continue and N to quit."
  another = gets.chomp.upcase
end
