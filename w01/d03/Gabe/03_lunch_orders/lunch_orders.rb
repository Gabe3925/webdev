orders = Hash.new
orders = {}

more_orders = "y"

while more_orders == "y"

puts "enter name :"
name = gets.chomp.downcase

puts "please enter the order for #{name} :"
order = gets.chomp.downcase

if !orders.has_key?(name)
  then orders[name] = [] #creates a hash key with an empty value
end

orders[name].push(order) #pushes the order for name up into the value for the new hash name.

  puts "another order to input? y / n "
  more_orders = gets.chomp.downcase

break if more_orders == "n"

end

puts "all orders: #{orders}"
puts hash.keys
puts hash.value


