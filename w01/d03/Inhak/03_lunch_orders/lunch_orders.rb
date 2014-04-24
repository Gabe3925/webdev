taking_orders = true
all_orders = {}

while taking_orders == true
  puts "Who is this order for?"
  name = gets.chomp
  puts "What are you ordering?"
  food = gets.chomp

  if !all_orders.has_key?(name)
    all_orders[name] = []
  end

  all_orders[name].push(food)

  puts "Great! Want to add more food? (Y/N)"
  option = gets.chomp.downcase
  taking_orders = false if option == "n"
end

  puts "Here are all the orders: #{all_orders}"
