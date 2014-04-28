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

#The program should instantiate several new apartments at the outset

apt_1 = Apartment.new(201 Q St NE, 2500, 1100, 2, 2, 2)
apt_2 = Apartment.new(1635 C St SE, 2200, 1500, 2, 1.5, 2)
apt_3 = Apartment.new(729 Otis Pl NW, 2950, 2100, 3, 1.5, 2)

#The user should be presented with the following options:
#Listing all apartments. List all of the apartments. If the apartment is unoccupied you should say something like "Apt 1A is 750 sqft and has 1 bed and 1 bath. It costs $2500 a month". If an apartment is occupied by a tenant you should say something like: Travis lives in Apt 1A.

#View and apartment's details. Tell the user the address, monthly_rent, sqft, num_beds, num_baths, and renters

#Add an apartment. Make sure to get the appropriate input from the user when creating an apartment

#Add a tenant to the apartment. Make sure to get the appropriate input from the user to create your person. Make sure to ask which apartment they want to live in. Add the person to that apartment. NOTE: Only two people can live in an apartment.

#Quit

#The program should return to the menu until the user quits

