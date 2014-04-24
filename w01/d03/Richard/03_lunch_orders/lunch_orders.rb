orders = {}

while true
puts "Welcome to Richard's Cafe, may I have a name for your order?"
name = gets.chomp

puts "What would you like to eat, #{name}?"
order = gets.chomp

  if !orders.has_key?(name) #if
    orders[name] = []
    # defines a key in orders hash with a value as an array
  end
  orders[name].push(order)
    #for key :name, push user entry 'order' into value
  puts "Anything else?"
  break if !gets.index('y'.downcase)
end

orders

