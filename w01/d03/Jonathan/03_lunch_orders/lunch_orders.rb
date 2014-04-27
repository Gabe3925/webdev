orders={}

  puts "Name for order:"
  name = gets.chomp

while true

  puts "#{name}, what would you like to order:"
  item = gets.chomp

  if !orders.has_key?(name)
    orders[name] = []
    puts "#{name}, would you like to order another item? Enter (y) or (n)"
    orders[name].push(item)
    quit = gets.chomp.downcase
   break if quit.include? 'y'
  end

end

puts orders
