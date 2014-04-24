orders = {}

while true

  puts "Name for order:"
  name = gets.chomp

  puts "Hello, #{name}, what would you like to order?"
  order = gets.chomp

  if !orders.has_key?(name)
    orders[name] = []
  end

  orders[name].push(order)

  puts "Would you like to exit? (Y or N)"
  exit = gets.chomp.downcase
  break if exit == "y"

end

puts orders
#orders.each {|name, order| puts "#{name} ordered #{order}"}
