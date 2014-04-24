orders = {}

while true

  puts "What's the name for this order?"
  name = gets.chomp

  puts "#{name} wants to order?"
  food = gets.chomp

  if !orders.has_key?(name) #checks to see if key with given name exists
    orders[name] = [] #if key doesn't exist, creates it w/ empty array
  end

  orders[name].push(food) #finds key and PUSHES new value to food array



  puts "do you have more orders?(y/n)"
  continue = gets.chomp.downcase

  puts orders.join(' ordered ')

  break if continue == "n"

end


