
lunch_hash = {}

while true
  puts "Okay, what's your name for the order?"
  name = gets.chomp.capitalize.to_sym
  orders = []

  while true
    puts "#{name}, what would you like in your order?"
    order_new = gets.chomp
    orders.push(order_new)

    lunch_hash[name] = orders

    puts "Would you like to add another item to your order? Y/N"
    continue = gets.chomp.upcase
    break if continue == "N"

  end

  puts "Are there more people that need to add their orders? Y/N"
  more_people = gets.chomp.upcase
  break if more_people == "N"

end

lunch_hash.each do |key, array|
  puts "#{key} ordered a #{array.join(', ')}."
end
