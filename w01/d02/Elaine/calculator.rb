operation = ""
number1 = ""
number2 = ""

while operation != "quit"
  puts ""
  puts "Please enter an operation to perform from the following list."
  puts ""
  puts "\"addition\""
  puts "\"subtraction\""
  puts "\"multiplication\""
  puts "\"division\""
  puts "\"square root\""
  puts "\"exponentiation\""
  puts ""
  puts "Otherwise, enter \"quit\" to exit."

  operation = gets.chomp.downcase


  if operation != "quit"
    puts ""
    puts "Please enter your first number."
    number1 = gets.to_i

    unless operation == "square root"
      puts ""
      puts "Please enter your second number."
      number2 = gets.to_i
    end

    case operation
    when "addition"
      sum = number1 + number2
      puts "#{number1} + #{number2} = #{sum}"
    when "subtraction"
      difference = number1 - number2
      puts "#{number1} - #{number2} = #{difference}"
    when "multiplication"
      product = number1 * number2
      puts "#{number1} * #{number2} = #{product}"
    when "division"
      quotient = number1 / number2
      puts "#{number1} / #{number2} = #{quotient}"
    when "square root"
      sqrt_answer = Math.sqrt(number1)
      puts "the square root of #{number1} = #{sqrt_answer}"
    when "exponentiation"
      exponent_answer = number1**number2
      puts "#{number1}^#{number2} = #{exponent_answer}"
    else
      puts "You did not select a valid operation."
    end
  end
end

puts "Thank you for using this calculator!"
