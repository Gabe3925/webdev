require 'pry'
puts "ARE YOU READY TO CALCULATE!?"
puts "Here are a list of operations we can perform: "
operation = "0"
operations = [
  "1.  Addition +",
  "2.  Subtraction -",
  "3.  Multiplication *",
  "4.  Division /",
  "5.  Exponentials ^",
  "6.  Square Roots",
  "7.  Sine",
  "8.  Cosine",
  "9.  Tangent",
  "10. Exit Calculator"
]

def calculator(operation, n1, n2)
  case operation
    when "1"
      return "You've chosen Addition! #{n1} + #{n2} = #{n1 + n2}"
    when "2"
      return "You've chosen Subtraction! #{n1} - #{n2} = #{n1 - n2}"
    when "3"
      return  "You've chosen Multiplication! #{n1} * #{n2} = #{n1 * n2}"
    when "4"
      return  "You've chosen Division! #{n1} / #{n2} = #{n1 / n2}"
    when "5"
      return "You've chosen to raise #{n1} to the power of #{n2} which equals #{n1**n2}"
    when "6"
      return "You've chosen to get the square root of #{n1} which equals #{n1.to_f**n2}"
    end
end

run = true
while run
  operations.each {|x| puts x}

  puts "Choose a number associated with an operator to perform:"

  operation = gets.chomp

  if operation == "6"
    puts "Which number would you like to take the square root of?"
    n1 = gets.to_i
    n2 = 0.5
  elsif operation == "10"
    run = false
  else
    puts "What first number would you like to operate on?"
    n1 = gets.to_i
    puts "What about the second?"
    n2 = gets.to_i
  end
  puts calculator(operation, n1, n2)
end

puts "Thanks for Calculatin'!"
