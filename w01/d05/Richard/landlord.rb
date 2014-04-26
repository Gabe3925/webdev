=begin

  ##The Landlord

####Prompt:
You are a landlord in need of an app that will track your apartments and tenants.

#### Part 1 - Creating the classes

Define classes for __Person__ and __Apartment__

A person should have the following attributes:

* name
* age
* gender

An apartment should have the following attributes:

* address (a single string including floor and unit numbers if applicable)
* monthy_rent
* sqft
* num_beds
* num_baths
* renters (the person or persons living in the apartment)

Okay, now take 20 minutes to first read-through and think about the methods & behavior outlined below.

#### Part 2 - Creating the program functionality & menu display

* The program should instantiate several new apartments at the outset.
* The user should then be presented with the following menu options
  * Listing all apartments
  * View an apartment's details
  * Add an apartment
  * Add a tenant to an apartment
  * Quit
* The program should return to the menu until the user quits

#### View apartment details
* Tell the user the address, monthly_rent, sqft, num_beds, num_baths, and
renters

#### Adding an apartment
* Make sure to get the appropriate input from the user when creating an apartment

#### Adding a tenant to an apartment
* Make sure to get the appropriate input from the user to create your person
* Make sure to ask which apartment they want to live in
* Add the person to that apartment
* __NOTE:__ Only two people can live in an apartment due to zoning laws (at least until you get to the bonus).

#### Listing the apartments
* List all of the apartments
* If the apartment is unoccupied(no renters) you should say something like:
  `Apt 1A is 750 sqft and has 1 bed and 1 bath. It costs $2500 a month`
* If the apartment is occupied by a tenant, you should say something like:
  `Travis lives in Apt 1A`

### Bonus
* Increase the number of people that can live in an apartment to up to the number of bedrooms in the apartment. Adjust the rest of your program accordingly.
* Add functionality so you can evict a tenant from an apartment.
=end
##########################################################


require 'pry'
class Person

  def initialize(name, age, gender)
  @name = name
  @age = age
  @gender = gender
  end

end


class Apartment

attr_accessor :address, :rent, :sqft, :num_baths, :num_beds, :renters

  def initialize(address, rent, sqft, num_beds, num_baths)
    @address = address
    @rent = rent
    @sqft =  sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = []
  end


  def show_apt_info
    return "The Apartments we have on the market are #{self.address} with a montly rent of $#{self.monthly_rent}.  The square footage is #{self.sqft} sqft with #{self.num_beds} bedroomss and #{self.num_baths} bathrooms)"
  end

  def to_a
    apt_array = []
      return apt_array.push(@address, @rent, @sqft, @num_baths, @num_beds, @renters)
  end

  # def to_s

  #   return "I understand you're looking for a new place to live!"
  #   return "Is there anything I can help you with?"
  #   return ""
  #   return "1.) Perhaps a listing of all the available apartments?"
  #   return "2.) A listing of an apartments details?"
  #   return "3.) Would you like to add an apartment to our listings?"
  #   return "4.) Would you like to add a tenant to an existing apartment?"
  #   return "5.) There is nothing you can help me with."
  #   option = gets.chomp
  # end
end
  def report_listings(array_of_listings)

    address_array = array_of_listings.select do |address|
          address.index[0]
        end
  end


# turning apt_1,2, & 3 into manageable Class arrays.
  report_listings(apt_1 = Apartment.new("52 Rathmell Drive, London SW4 8JN, UK",500, 750,2,1).to_a)
  apt_2 = Apartment.new("1 Strollamus, Broadford, Isle of Skye, Highland IV49 9AL, UK",750, 900, 2,2).to_a
  apt_3 = Apartment.new("8 Oakfield Road, Londonderry, Derry BT48, UK", 950, 1300, 3,2).to_a
puts reports_listings(apt_1)
puts apt_2
puts atp_3

  # apt_1 = Apartment.new({
  # address: "52 Rathmell Drive, London SW4 8JN, UK",
  # rent: 500,
  # sqft: 750,
  # num_beds: 2,
  # num_baths: 1
  # })

  # apt_2 = Apartment.new({
  # address: "1 Strollamus, Broadford, Isle of Skye, Highland IV49 9AL, UK",
  # rent: 500,
  # sqft: 750,
  # num_beds: 2,
  # num_baths: 1
  # })

  # apt_3 = Apartment.new({
  # address: "8 Oakfield Road, Londonderry, Derry BT48, UK",
  # rent: 500,
  # sqft: 750,
  # num_beds: 2,
  # num_baths: 1
  # })

#report_listings(apt_1)

# puts "I understand you're looking for a new place to live!"
# puts "Is there anything I can help you with?"
# puts ""
# puts "1.) Perhaps a listing of all the available apartments?"
# puts "2.) A listing of an apartments details?"
# puts "3.) Would you like to add an apartment to our listings?"
# puts "4.) Would you like to add a tenant to an existing apartment?"
# puts "5.) There is nothing you can help me with."
# option = gets.chomp
#puts apartment_array

