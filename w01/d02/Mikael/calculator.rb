require 'pry'

def calculate(operation = nil, first = nil, second = nil)
  case operation
  when "add"
    return first + second
  when "sub"
    return first - second
  when "mul"
    return first * second
  when "div"
    return first / second
  when "exp"
    return first ** second
  when "sqrt"
    return Math.sqrt(first)
  else
    return "Sorry, that is not a valid operation."
  end

end

puts "Welcome to the calculator!"
puts "You may add, subtract (sub), multiply (mul), divide (div), exponentiate (exp), or square root (sqrt)."
resp = "yes"
while resp == "yes"
  puts "Please enter an operation, followed by the first operand, followed by the second operand. [i.e. calculate(\"exp\",2,3)]"
  puts "Would you like to perform an operation? (yes/no)"
  resp = gets.chomp.downcase
  if resp == "yes"
    puts "Enter your command."
  end
end
binding.pry
