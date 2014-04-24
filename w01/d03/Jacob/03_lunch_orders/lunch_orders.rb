orders = {}

while true
  puts "Name for order:"
  name = gets.chomp
  puts "#{name} wants to order:"
  order = gets.chomp
  if !orders.has_key?(name)
    orders[name]=[]
  end
  orders[name].push(order)
  puts "Add another item to the order? (y/n)"
  answer = gets.chomp.downcase
  break if answer != "y"
end

puts orders
