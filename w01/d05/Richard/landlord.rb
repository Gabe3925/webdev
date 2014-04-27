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

attr_accessor :address, :rent, :sqft, :num_beds, :num_baths, :renters, :apt_array, :total_listings

  def initialize(apartment)
    @address = apartment[:address]
    @rent = apartment[:rent]
    @sqft =  apartment[:sqft]
    @num_beds = apartment[:num_beds]
    @num_baths = apartment[:num_baths]
    @renters = apartment[:renters]
  end

  # def address=(address)
  #   @address = list_address
  # end

  # def rent=(rent)
  #   @rent = renters
  # end

  # def sqft=(sqft)
  #   @sqft = sqft
  # end

  # def num_beds=(num_beds)
  #   @num_beds = num_beds
  # end

  # def num_baths=(num_baths)
  #   @num_baths = num_baths
  # end

  # def renters=(renters)
  #   @renters = renters
  # end

    # puts address to screen if option is selected
  def list_address
    if @renters < 1
      return "#{@address} is available."
    else
    end
  end


     # Add some conditional features, ie- multiple bathrooms add plurals
  def list_details
      return "The Apartment at #{self.address()} has a montly rent of £#{self.rent()}. \nThe square footage is #{self.sqft()} sqft with #{self.num_beds()} bedrooms and #{self.num_baths()} bathroom(s)."
  end

end

# turning apt_1,2, & 3 into manageable Class arrays.
  apt_1 = Apartment.new({
    address: "52 Rathmell Drive, London SW4 8JN, UK",
    rent:500,
    sqft: 750,
    num_beds: 2,
    num_baths: 2,
    renters: 2
    })


  # apt_2 = Apartment.new("1 Strollamus, Broadford, Isle of Skye, Highland IV49 9AL, UK",750, 900, 2,0)
  # apt_3 = Apartment.new("8 Oakfield Road, Londonderry, Derry BT48, UK", 950, 1300, 3,2,0)

class Listings
  attr_accessor :index, :total_listings

  def initialize
    @total_listings = []
    @index = 0
  end

  def add_listing(apartment)
    self.total_listings.push(apartment)
  end

  def listing
    return self.total_listings[@index]
  end

  def list_address
    if self.listing
      self.listing.list_address()
    end
  end

  def list_details
    if self.listing
      self.listing.list_details()
    end
  end


  # def remove_listing(apartment)

  #   self.total_listings.
  # end


end

  def print_menu

    puts  "I understand you're looking for a new place to live!"
    puts  "Is there anything I can help you with?"
    puts  ""
    puts  "1.) Perhaps a listing of all the available apartments?"
    puts  "2.) A listing of an apartments details?"
    puts  "3.) Would you like to add an apartment to our listings?"
    puts  "4.) Would you like to add a tenant to an existing apartment?"
    puts  "5.) There is nothing you can help me with."
    option = gets.chomp.to_i

        case option
          when 1
            puts apt_1.list_address
            puts apt_2.list_address
            puts apt_3.list_address
          when 2
            puts apt_1.list_details
            puts apt_2.list_details
            puts apt_3.list_details
          when 3
            puts "Great! Let's get your apartment on the market"
            puts "What's the address of the apartment? (Street address, City, State/Provenance Abrv)"
            new_add = gets.chomp
            puts "How much would you like the montly rent to be? (In £)"
            new_rent = gets.chomp.to_i
            puts "What is the total square footage?"
            new_sqft = gets.chomp.to_i
            puts "How many bedrooms are there?"
            new_beds = gets.chomp.to_i
            puts "How many bathrooms are there?"
            new_baths = gets.chomp.to_i
            puts "Finally, how many tenants can it hold?"
            new_renters = gets.chomp.to_i
              if new_renters > new_beds
                puts "I'm sorry, but regulations mandate the the number of tenants must not" +
                     "exceed the number of available bedrooms. Please entry a different amount" +
                     "of alloted renters."
                     new_renters = gets.chomp.to_i
              else
              end
            new_apt = Apartment.new(new_add, new_rent, new_sqft, new_beds, new_baths, new_renters)
            puts "#{new_apt.list_details} will be placed on the market! Congrats!"
          else

          end

  end

total_listings = Listings.new
total_listings.add_listing(apt_1)
puts  total_listings.list_details




  # apt_1 = Apartment.new({
  # address: "52 Rathmell Drive, London SW4 8JN, UK",
  # rent: 500,
  # sqft: 750,
  # num_beds: 2,
  # num_baths: 1,
  # renters: 0
  # })
  # apt_1.list_details

  # apt_2 = Apartment.new({
  # address: "1 Strollamus, Broadford, Isle of Skye, Highland IV49 9AL, UK",
  # rent: 500,
  # sqft: 750,
  # num_beds: 2,
  # num_baths: 1,
  # renters: 0
  # })

  # apt_3 = Apartment.new({
  # address: "8 Oakfield Road, Londonderry, Derry BT48, UK",
  # rent: 500,
  # sqft: 750,
  # num_beds: 2,
  # num_baths: 1,
  # renters: 0
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

