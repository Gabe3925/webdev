class Person
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def name
    return @name
  end

  def talk
    return "Hi! I'm #{@name}"
  end
end


class Apartment
  def initialize(address, monthly_rent, sqft, num_beds, num_baths, renters=[])
    @address = address
    @monthly_rent = monthly_rent
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = @num_baths
    @renters = renters
  end

  def return_address
    if @renters.empty? == true
      return "This aprtment is located at #{@address}. It is #{@sqft}, has #{@num_beds} beds and #{@num_baths} baths."
    else
      return "#{@renters[0].name} lives here. (#{@address})"
    end
  end

  def return_details
    return
  end
end

peter = Person.new("Peter", 27, "male")
travis = Person.new("Travis", 26, "male")
stanley_kubrick = Person.new("Stanley", 99, "male")

morningside_heights = Apartment.new("1500 116th St., New York City, NY unit 605", 2100, 500, 1, 1, [travis, stanley_kubrick])
green_point = Apartment.new("200 5th st., Brooklyn NYC, NY unit 202", 1300, 600, 2, 1, [peter])
williamsburg = Apartment.new("1324 16th st., Brooklyn NYC, NY unit 22", 4500, 800, 3, 1, [])

apartments = [morningside_heights, green_point, williamsburg]

in_operation = true

while in_operation == true
  puts "*************************"
  puts "APARTMENT RENTAL PROGRAM!"
  puts "Choose from the menu what you want to do."
  puts " "
  puts "(1) View listings"
  puts "(2) View apartment details"
  puts "(3) Add a listing"
  puts "(4) Add a tenant"
  puts "(q) Quit"
  user_selection = gets.chomp

  case user_selection
  when "1"
    apartments.each do |apartment|
      puts apartment.return_address + "\n"
    end
  when "2"
    puts "Which apartment do you want to see?"
    count = 1
    apartments.each do |apartment|
      puts "(#{count}) #{apartment}"
      count += 1
    end
    address = gets.chomp
    puts

  when "3"
    puts "Please enter appropriate values!"
    puts "What is the address? (include unit)"
    addy = gets.chomp
    puts ""
  when "4"
  when "q"
    in_operation = false
  end
end
