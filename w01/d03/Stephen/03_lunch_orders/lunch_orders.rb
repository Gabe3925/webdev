# Stephen Stanwood (stephen@stanwoodsolutions.com)

def items_string(items)
  case items.size
  when 0
    return ""
  when 1
    return items[0]
  when 2
    return items[0] + " & " + items[1]
  when 3
    first = items[0]
    items.shift
    return first + ", " + items_string(items)
  end
end

def prompt(query)
  print query
  return gets.chomp
end

orders = {}

while
  name = prompt("Name for order ('q' to end): ")
  break if name.downcase == 'q'

  name = name.to_sym
  index = 0
  orders[name] ||= []

  while true
    item = prompt("==> #{name} wants to order ('q' to end): ")
    break if item.downcase == 'q'
    orders[name].push(item)
  end
  puts
end

puts
orders.each {|name, items| puts "#{name.to_s} ordered a #{items_string(items)}."}
