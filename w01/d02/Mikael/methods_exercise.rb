require 'pry'


def drinking_age?(age)
  if age < 21
    puts "You can't drink yet...legally."
    return false
  else
    puts "Libations galore!"
    return true
  end
end

def ac_action(curr_temp, func, desired_temp)
  puts "What is the current temperature?"
  temp = gets.to_i
  puts "Is the A/C functional? (yes or no)"
  answer = gets.chomp.downcase
  puts "What temperature would you prefer?"
  prefer = gets.to_i

  if answer == "yes" && temp > prefer
    return "Turn on the A/C please"
  elsif answer == "no" && temp > prefer
    return "Fix the A/C now! It's hot!"
  elsif answer == "no" && temp < prefer
    return "Fix the A/C whenever you have the chance... It's cool..."
  end
end

def is_prime?(int)
  for d in 2..(int - 1)
    if (n % d) == 0
      return false
    else
      return true
   end
  end
end
binding.pry
