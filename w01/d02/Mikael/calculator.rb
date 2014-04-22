

def calculate(operation, first, second)
  case operation
  when "add"
    return first + second
  when "subtract"
    return first - second
  when "multiply"
    return first * second
  when "divide"
    return first / second
  when "exponent"
    return first ** second
  else
    return "Sorry, that is not a valid operation."
  end

end



puts "Welcome to the calculator!"
puts "You may add, subtract, multiply, divide, exponentiate, or square root."
puts "Please enter an operation, followed by the first operator, followed by the second operator."
calculate("add",3,5)
calculate("exponentiate",2,3)
