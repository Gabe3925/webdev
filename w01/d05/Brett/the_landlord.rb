# You are a landlord in need of an app that will track your apartments and tenants

require 'pry'

#Define classes for Person and Apartment

class Person
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
end

class Apartment
  def initialize (address, monthly_rent, sqft, num_beds, num_baths, renters)
    @address = address
    @monthly_rent = monthly_rent
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = renters
  end
end

# PART 2 - Creating the program functionality and menu display
