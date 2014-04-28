require 'pry'

# Pre-Defining Arrays
apartment_list = []
tentant_list = []

menu_home = [
"(1) List of all apartments",
"(2) View apartment details",
"(3) Add an apartment",
"(4) Add tenant to an apartment",
"(5) Quit"
]

#================================#
#=======Class Definitions========#
#================================#
class Person
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  attr_accessor :name
  attr_accessor :age
  attr_accessor :gender
end

class Apartment
  def initialize(apt_num, rent, sqft, num_beds, num_baths, renter_name)
    @apt_num = apt_num
    @rent = rent
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renter_name = renter_name
  end  

  attr_accessor :apt_num
  attr_accessor :rent
  attr_accessor :sqft
  attr_accessor :num_beds
  attr_accessor :num_baths
  attr_accessor :renter_name
end

#================================#
#===========Functions============#
#================================#
def new_apt(new_ad, new_rent, new_sqft, new_bed, new_baths, new_renter)
  Apartment.new(new_ad, new_rent, new_sqft, new_bed, new_baths, new_renter)
end

def create_tenant(new_name, new_age, new_gender)
  Person.new(new_name, new_age, new_gender)
end    

#================================#
#============Menu================#
#================================#
puts "Please make a menu selection"
puts menu_home
menu_operation = gets.chomp

while menu_operation != "q"
  case menu_operation
    when "1" then apartment_list
    when "2" then tentant_list()
    when "3" then new_apart()
      puts "Enter apartment number:"
        new_ad = gets.chomp.to_s
      puts "Enter aparment rent ($):"
        new_rent = gets.chomp.to_i
      puts "Enter square footage:"
        new_sqft = gets.chomp.to_i
      puts "Enter number of bedrooms:"
        new_bed = gets.chomp.to_i
      puts "Enter number of baths:"
        new_baths = gets.chomp.to_i
      puts "Enter renter name. If none, enter nil:"
        new_renter = gets.chomp
      apartment_list.push(new_apt(new_ad, new_rent, new_sqft, new_bed, new_baths, new_renter))
    
    when "4" then puts new_tentnat
      puts "Enter name"
        new_name = gets.chomp.to_s
      puts "Enter gender"
        new_gender = gets.chomp.to_s
      puts "Enter age"
        new_age = gets.chomp.to_i
    tenant_list.push(create_tenant(new_ad, new_rent, new_sqft, new_bed, new_baths, new_renter))
  end 
end

#================================#
#=======Instantiation============#
#================================#

apartment_list.push(new_apt("1A", 2500, 1800, 1, 1, nil))
apartment_list.push(new_apt("1B", 2000, 850, 1, 1, nil))
apartment_list.push(new_apt("2A", 2000, 850, 1, 1, Frank))
apartment_list.push(new_apt("2B", 2500, 1000, 1, 1, nil))
apartment_list.push(new_apt("3A", 2500, 1200, 1, 1, "David"))
apartment_list.push(new_apt("3B", 2500, 1300, 1, 1, "Daniel"))

tenant_list.push(create_tenant("Bill", 30, "male"))
tenant_list.push(create_tenant("Sarah", 35, "female"))
tenant_list.push(create_tenant("Jennifer", 40, "female"))
