# ##The Landlord

# ####Prompt:
# You are a landlord in need of an app that will track your apartments and tenants.

# #### Part 1 - Creating the classes

# Define classes for __Person__ and __Apartment__

# A person should have the following attributes:

# * name
# * age
# * gender


# An apartment should have the following attributes:

# * address (a single string including floor and unit numbers if applicable)
# * monthy_rent
# * sqft
# * num_beds
# * num_baths
# * renters (the person or persons living in the apartment)

# Okay, now take 20 minutes to first read-through and think about the methods & behavior outlined below.

# #### Part 2 - Creating the program functionality & menu display

# * The program should instantiate several new apartments at the outset.
# * The user should then be presented with the following menu options
#   * Listing all apartments
#   * View an apartment's details
#   * Add an apartment
#   * Add a tenant to an apartment
#   * Quit
# * The program should return to the menu until the user quits


# #### View apartment details
# * Tell the user the address, monthly_rent, sqft, num_beds, num_baths, and renters

# #### Adding an apartment
# * Make sure to get the appropriate input from the user when creating an apartment

# #### Adding a tenant to an apartment
# * Make sure to get the appropriate input from the user to create your person
# * Make sure to ask which apartment they want to live in
# * Add the person to that apartment
# * __NOTE:__ Only two people can live in an apartment due to zoning laws (at least until you get to the bonus).

# #### Listing the apartments
# * List all of the apartments
# * If the apartment is unoccupied(no renters) you should say something like:
#   `Apt 1A is 750 sqft and has 1 bed and 1 bath. It costs $2500 a month`
# * If the apartment is occupied by a tenant, you should say something like:
#   `Travis lives in Apt 1A`


# ### Bonus
# * Increase the number of people that can live in an apartment to up to the number of bedrooms in the apartment. Adjust the rest of your program accordingly.
# * Add functionality so you can evict a tenant from an apartment.

require "pry"

class Person
  attr_reader :name

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
end

class Apartment
  @@list ||= []
  def self.list; @@list; end

  attr_reader :address, :monthly_rent, :sq_ft, :num_beds, :num_baths
  attr_accessor :renters

  def initialize(address, monthly_rent, sq_ft, num_beds, num_baths)
    @address = address
    @monthly_rent = monthly_rent
    @sq_ft = sq_ft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = []
    @@list << self
  end

  def self.find_apt(apt_address)
    @@list.select { |apt| apt.address.casecmp(apt_address) == 0 }[0]
  end
end

def get_valid_answer(question, valid_answers)
  # checks and validates if user input matches possible answers, 'valid_answers'
  # valid_answers can be an Array of possible answers or a regex string.

  puts question
  user_input = gets.chomp

  answer = case valid_answers
    when Array then valid_answers.detect { |possible_answer| possible_answer.casecmp(user_input) == 0 }
    when Regexp then user_input.match(valid_answers) { |match| match[0] }
  end
  return answer if answer
  get_valid_answer(question, valid_answers)  # ask question again, if an unexpected answer is given.
end

def add_apartment
  # ask users info to add an apartment to our listings (address, monthly rent, square footage, # beds/baths)
  address = get_valid_answer("What is the address of the apartment you wish to add?", /.+/)

  # checks if address already exists before creating a new apartment record
  if Apartment.find_apt(address)
    puts "We already have a record of this apartment."
  else
    pos_int_regex = /^[0-9]+$/

    monthly_rent = get_valid_answer("How much is the monthly rent (in USD)?", pos_int_regex).to_i
    sq_ft = get_valid_answer("How big is the apartment (in sq. ft.)?", pos_int_regex).to_i
    num_beds = get_valid_answer("How many beds are there?", pos_int_regex).to_i
    num_baths = get_valid_answer("How many bathrooms are there?", pos_int_regex).to_i
    Apartment.new(address, monthly_rent, sq_ft, num_beds, num_baths)
  end
end

def add_tenant
  # apts are available if they have a free bedroom
  apt_list = Apartment.list
  avail_apts = apt_list.collect { |apt| apt.address if apt.renters.length < apt.num_beds }.compact

  if avail_apts.empty?
    puts "Sorry, there's no availability in the building right now."
  else
    # add a new tenant to an apartment with their name, age, and gender info
    name = get_valid_answer("What is the tenant's name you wish to add?", /[a-z\s-]+/i).split.map(&:capitalize).join(" ")  # capitalizes name
    age = get_valid_answer("How old is #{name} (in years)?", /^[0-9]+$/).to_i
    gender = get_valid_answer("What is #{name}'s gender (M/F)?", ["M", "F"])
    tenant = Person.new(name, age, gender)

    # ask the user to pick an available apartment.  re-ask until user chooses an avail. apt.
    apt_choices = avail_apts.collect { |apt_address| "* #{apt_address}" }.join("\n")
    tenant_address = get_valid_answer("Where does #{name} want to live?\n#{apt_choices}", avail_apts)
    Apartment.find_apt(tenant_address).renters << tenant
  end
end

def evict_tenant
  # evict tenant from apartment (removes them from Apartment.renters array)

  apt_address = get_valid_answer("Which apartment do you wish to evict?", /.+/)
  if apt = Apartment.find_apt(apt_address)
    tenants = apt.renters
    avail_tenants = tenants.collect { |renter| renter.name }
    tenant_choices = "\n* " + avail_tenants.join("\n* "); #=> * Name 1 (line break) * Name 2 (line break), etc.
    evicted_tenant = get_valid_answer("Which tenant do you wish to evict? #{tenant_choices}", avail_tenants)
    tenants.delete_if { |renter| renter.name.casecmp(evicted_tenant) == 0 }
  else
    puts "Sorry, there is no apartment on record with that address."
  end
end

def list_apts
  # prints out a directory of all the apartments in the building based on floor number

  apt_addresses = Apartment.list.collect { |apt| apt.address }
  puts "Apartments in the directory: #{apt_addresses.join(", ")}"
end

def view_apt
  # prints info about a specific apartment
  apt_addresses = Apartment.list.collect { |apt| apt.address }
  address = get_valid_answer("What is the address of the apartment you wish to view?", apt_addresses)
  apt = Apartment.find_apt(address)
  tenants = apt.renters

  # if apartment is unoccupied prints important details about the apt for prospective tenants
  if tenants.length == 0
    bed_correct_plural = apt.num_beds == 1 ? "bed" : "beds"
    bath_correct_plural = apt.num_baths == 1 ? "bath" : "baths"
    apt_details = "Apt #{apt.address} is #{apt.sq_ft} sq ft, has #{apt.num_beds} #{bed_correct_plural}, and #{apt.num_beds} #{bath_correct_plural}. "
    apt_details += "It costs $#{apt.monthly_rent} month."
    puts apt_details
  else
  # if apt is occupied, prints current tenants in the apt
    renter_names = tenants.collect { |renter| renter.name }
    renter_plural = case renter_names.length
      when 1 then "#{renter_names[0]} lives"
      when 2 then "#{renter_names[0]} and #{renter_names[1]} live"
      when 3 then "#{renter_names[0...-1].join(", ")}, and #{renter_names[-1]} live"
    end

    puts "#{renter_plural} in apt #{apt.address}."
  end
end

def show_menu
  puts
  menu_text = []
  menu_text << "L - List all apartments"
  menu_text << "V - View an apartment's details"
  menu_text << "A - Add an apartment"
  menu_text << "T - Add a tenant to an apartment"
  menu_text << "E - Evict a tenant from an apartment"
  menu_text << "Q - Quit"
  menu_options = menu_text.collect { |line| line[0] }
  menu_choice = get_valid_answer(menu_text, menu_options)
  puts

  case menu_choice
    when "L" then list_apts
    when "V" then view_apt
    when "A" then add_apartment
    when "T" then add_tenant
    when "E" then evict_tenant
    when "Q" then puts "Goodbye, thanks for checking out our apartments."
  end
  show_menu unless menu_choice == "Q"
end


apt_1a = Apartment.new "1A", 2000, 557, 1, 1
apt_1b = Apartment.new "1B", 2200, 704, 2, 2
apt_1c = Apartment.new "1C", 3225, 965, 3, 3
binding.pry
