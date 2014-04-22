require 'pry'

def drinking_age(age)
  if age < 21
    puts "You are not old enough to (legally) drink yet."
    return false
  else
    puts "Congratulations, you can (legally) drink!"
    return true
  end
end

def ac_action(current_temp, functional, desired_temp)
  if functional = "yes" && current_temp > desired_temp
    return "Turn on the A/C please."
  elsif functional = "no" && current_temp > desired_temp
    return "Fix the A/C now! It's hot!"
  elsif functional = "no" && current_temp < desired_temp
    return "Fix the A/C whenever you have the chance... It's cool..."
  end
end

def is_prime?(number)
  if number % !1 == 0 && number % !number == 0
    return false
  else
    return true
  end
end

puts is_prime?(24)
