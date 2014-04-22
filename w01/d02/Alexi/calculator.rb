puts "Calculator Menu"
puts "Select what type of calculations you wish to perform: "
puts "|--Menu--||"
puts "1. Addition"
puts "2. Subtraction"
puts "3. Multiplication"
puts "4. Division"

menu_select = gets.to_i

puts "What is your first number?"
value1 = gets.to_i
puts "What is your second number?"
value2 = gets.to_i

def calc_basic(val1, val2, operation)


  if operation == 1
    return val1 + val2

  elsif operation == 2
    return val1 - val2

  elsif operation == 3
    return val1 * val2

  else operation == 4
    return val1 / val2
  end
end

result = calc_basic(value1, value2, menu_select)
puts "Your answer is #{result}"

#Test Case
#calc_basic(5, 10)
