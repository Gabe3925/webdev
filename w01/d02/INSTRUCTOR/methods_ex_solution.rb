require 'pry'

def premature_return
  return "Deathstar"
  puts "Darth Darth Darth Darth Darth"
  return "BSG"
end

returned_value_of = premature_return

binding.pry
