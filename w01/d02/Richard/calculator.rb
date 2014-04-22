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
    when "5"
      puts "You've chosen to raise #{x} to the power of #{y} which equals #{x**y}"
    when "6"
      puts "You've chosen to get the square root of #{x} which equals #{x.to_f**(0.5)}"
    end

end


calculator("6",3,5)
