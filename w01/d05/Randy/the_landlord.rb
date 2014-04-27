require "pry"
#Need to create two classes
	#Person class
	#Apartment class
#Person class needs three attributes (name, age, gender)


list_of_people = []
list_of_apartments = []

class Person
	attr_accessor :name
	attr_accessor :age
	attr_accessor :gender

  def initialize(name, age, gender)
  	@name = name
  	@age = age
  	@gender = gender
  end
end

#Apartment class needs several variables:
	#Address (This will include floor & unit number as a single string
	#monthly_rent
	#sqft
	#num_beds
	#num_baths
	#renters (the instance of the person class that lives in the apartment)
class Apartment
	
	attr_accessor :address
	attr_accessor :monthly_rent
	attr_accessor :sqft
	attr_accessor :num_beds
	attr_accessor :num_baths
	attr_accessor :renters

	def initialize (address, monthly_rent, sqft, num_beds, num_baths, *renters)
		@address = address
		@monthly_rent = monthly_rent
		@sqft = sqft
		@num_beds = num_beds 
		@num_baths = num_baths
		@renters = renters
	end

end
# If the apartment is unoccupied(no renters) you should say something like: Apt 1A is 750 sqft and has 1 bed and 1 bath. It costs $2500 a month
# If the apartment is occupied by a tenant, you should say something like: Travis lives in Apt 1A

def display_of_all_apartments_method(array)
	 array.each{|hash|
	 	hash.each {|key, value|
	 		puts key 
	 	if !value.renters.nil?
	 		puts "#{value.renters.name} lives in this apartment."
	 	else
	 		puts "#{value.address} is #{value.sqft} square feet, with #{value.num_beds} bedrooms & #{value.num_baths} bathrooms. Rent is $#{value.monthly_rent} a month"
    	end
    	}}
end

def apartment_details(array)
	array.each{|hash|
    		hash.each{|key, value|
    		puts "\n#{key.to_s} -- "}}
    	puts "What apartment would you like to see more about?"
    	which_apt = gets.chomp
    	array{|hash|
    	hash.each{ |key, value|
    		puts "\n#{key.to_s} Info --> \nAddress: #{value.address} Monthly Rent: #{value.monthly_rent} Square Feet: #{value.sqft}\nBedrooms: #{value.num_beds} Bathrooms: #{value.num_baths} Tenants: #{value.renters}\n"}}
end

def create_an_apartment(address, monthly_rent, sqft, num_beds, num_baths, *renters)
	Apartment.new(address, monthly_rent, sqft, num_beds, num_baths, renters)
end



sally = Person.new("Sally", 36, "Female")
john = Person.new("John", 24, "Male")
rich = Person.new("Rich", 33, "Male")
oliver = Person.new("Oliver", 50, "Male")


#I will need to create several new instances of the apartment class 
#I will need to present the user with a menu of options:
	#Lists all apartments
	#View an apartment's details
	#Add an apartment
	#Add a tenant to an apartment
	#Quit
#The program should return the user to the menu after each selection, until the user quits

sunrise_arms = create_an_apartment("101A", "400", "75", "2", "1", sally)
list_of_apartments.push({"Sunrise Arms" => sunrise_arms})
college_towers = create_an_apartment("206L", "123", "12", "1", "0", john)
list_of_apartments.push({"College Towers" => college_towers})
upscale = create_an_apartment("345B", "17000", "8000", "6", "14", rich)
list_of_apartments.push({"Swanky Digs" => upscale})
lux = create_an_apartment("345B", "17000", "8000", "6", "14", oliver)
list_of_apartments.push({"Too Rich for You" => lux})
# sun_r_a = create_an_apartment("115H", "1700", "800", "2", "2", nil)
# list_of_apartments.push({"Sunrise Arms" => sun_r_a})
# fancy = create_an_apartment("Penthouse", "45000", "9000", "8", "9", nil)
# list_of_apartments.push({"Too Rich for You" => fancy})


menu_choice = ""

while menu_choice != "5"
puts "\nWelcome to (GA)partements!"
puts "Please select an option from our menu:"
puts "1 - List of All apartments"
puts "2 - View Details of a Specific Apartment"
puts "3 - Add an Apartment to our listings"
puts "4 - Add a Tenant to an Apartment"
puts "5 - Quit"
menu_choice = gets.chomp

  case menu_choice
#The "List of all apartments" menu option should:
	#List all apartments
	#IF the apartment is unoccupied:
		#print to the user:
			#"Apt #X is XXXsqft and has X bedrooms and X bathrooms"
			#"It costs $2500 per month"
	#IF the apartment is occupied:
		#print to the user:
			#PERSON lives in Apt #X
    when "1"
    	display_of_all_apartments_method(list_of_apartments)
#The "View an apartment" option should display to the user:
	#address, monthly_rent, sqft, num_beds, num_baths, & renters
    when "2"
    	apartment_details(list_of_apartments)


#The "add an apartment" option should promt the user for all the needed input
    when "3"	
    puts "What is the name of the apartment you'd like to add?"
	new_apartment_name = gets.chomp
	puts "What is the apartment address (ex. 7B)?"
	address = gets.chomp
	puts "What is the Monthly Rent?"
	monthly_rent = gets.chomp.to_i
	puts "How many Square Feet is the Apartment?"
	sqft = gets.chomp.to_i
	puts "How many Bedrooms does the Apartment have?"
	num_beds = gets.chomp.to_i
	puts "How many Bathrooms does the Apartment have?"
	num_baths = gets.chomp.to_i
	puts "Who lives in the Apartment?"
	renters = gets.chomp

	test_apt = create_an_apartment(address, monthly_rent, sqft, num_beds, num_baths, renters)
    list_of_apartments.push({new_apartment_name => test_apt})
    puts "This apartment is located at #{test_apt.address}, cost $#{test_apt.monthly_rent} per month, has #{test_apt.sqft}, #{num_beds} bedrooms, #{num_baths} bathrooms and is occupied by #{test_apt.renters} "
    end






end 









#The "Add a tenant" option should:
	#Check that the input from the user is of the correct type (input.class == the correct class)
	#Ask what apartment they want to live in
	#Add the person to the apartment
		#At first ONLY 2 people may occupy one apartment


