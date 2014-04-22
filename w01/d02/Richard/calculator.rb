require 'pry'


def calculator(operation, x, y)
  case operation
    when "1"
      puts "You've chosen Addition! #{x} + #{y} = #{x + y}"
    when "2"
      puts "You've chosen Subtraction! #{x} - #{y} = #{x - y}"
    when "3"
      puts  "You've chosen Multiplication! #{x} * #{y} = #{x * y}"
    when "4"
      puts  "You've chosen Division! #{x} / #{y} = #{x / y}"
    end
end


calculator("1",3,5)
