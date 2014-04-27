require 'pry'

#============================
# Helper Methods
#============================
def get_response_to(question)
  puts question
  answer = gets.chomp
  return answer
end

# lists all apartments
def list_apartments(apartments)
  puts "There are apartments at:"
  apartments.each do |apartment|
    puts apartment.address
  end
end

def add_apartment(apt, apartment_array)
  apartment_array << apt
end

# creates an empty array into which we will push newly instantiated apts
apt_array = []

#===========================================
# Defining the Person class
#===========================================
class Person
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def name
    return @name
  end

  def name=(name)
    @name = name
    return @name
  end

  def age
    return @age
  end

  def age=(age)
    @age = age
    return @gender
  end

  def gender
    return @gender
  end

  def gender=(gender)
    @gender = gender
    return @gender
  end
end

#===========================================
# Defining the Apartment class
#===========================================
class Apartment
  def initialize(address, monthly_rent, sqft, num_beds, num_baths)
    @address = address
    @monthly_rent = monthly_rent
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = []
  end

  def to_s
    puts "The apartment at #{address} is a #{num_beds} bedroom, " +
         "#{num_baths} bath masterpiece for #{monthly_rent}/month."
  end

  def address
    return @address
  end

  def address=(address)
    @address = address
  end

  def monthly_rent
    return @monthly_rent
  end

  def monthly_rent=(monthly_rent)
    @monthly_rent = monthly_rent
  end

  def sqft
    return @sqft
  end

  def sqft=(sqft)
    @sqft = sqft
  end

  def num_beds
    return @num_beds
  end

  def num_beds=(num_beds)
    @num_beds = num_beds
  end

  def num_baths
    return @num_baths
  end

  def num_baths=(num_baths)
    @num_baths = num_baths
  end
end

#========================================
# Menu
#========================================

def list_options
  puts "Enter the NUMBER from the list below:"
  puts ""
  puts "1. List all apartments"
  puts "2. View an apartment's details"
  puts "3. Add an apartment"
  puts "4. Add a tenant to an apartment"
  puts "5. Quit"
end

answer = "marp"

# while answer != '5'
#   list_options
#   answer = gets.chomp
# end
  travis = Person.new("Travis", 27, "male")
  apt_1 = Apartment.new("452 Dean Street, #3, Brooklyn, NY", 2700, 800, 2, 1)
  apt_2 = Apartment.new("Somewhere along Brooklyn's 5th ave", 3000, 1000, 4, 1)
  apt_array << apt_1
  apt_array << apt_2

binding.pry

