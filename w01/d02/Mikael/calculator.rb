

def calculate(operation, first, second)
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
    return sqrt(first)
  else
    return "Sorry, that is not a valid operation."
  end

end



puts "Welcome to the calculator!"
puts "You may add, subtract (sub), multiply (mul), divide (div), exponentiate (exp), or square root (sqrt)."
puts "Please enter an operation, followed by the first operator, followed by the second operator."
calculate("add",3,5)
calculate("exponentiate",2,3)
