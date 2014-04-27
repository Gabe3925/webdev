require "pry"

building = []
tenants = []


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
  def initialize(address, monthly_rent, sqft, num_beds, num_baths, renters)
    @address = address
    @monthly_rent = monthly_rent
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = renters
  end

  attr_accessor :address
  attr_accessor :monthly_rent
  attr_accessor :sqft
  attr_accessor :num_beds
  attr_accessor :num_baths
  attr_accessor :renters

end

def newApt(unit, rent, sqft, bedrooms, bathrooms, tenant)
  Apartment.new(unit, rent, sqft, bedrooms, bathrooms, tenant)
end

apt1A = newApt("1A", 1000, 500, "1 bedroom", "1 bathroom", nil)
  building.push(apt1A)

apt1B = Apartment.new("1B", 1200, 550, "1 bedroom", "1 bathroom", "John Smith")
  building.push(apt1B)

apt1C = Apartment.new("1C", 1700, 700, "2 bedroom", "1 bathroom", "Fred Frith")
  building.push(apt1C)

apt2A = Apartment.new("2A", 2000, 700, "2 bedroom", "2 bathroom", nil)
  building.push(apt2A)

apt2B = Apartment.new("2B", 1900, 600, "1 bedroom",
  "2 bathroom", nil)
  building.push(apt2B)

apt3B = Apartment.new("2C", 1200, 500, "1 bedroom", "1 bathroom", "Red Swift")
  building.push(apt3B)


# apartments = {}
# apartments[:address] = building[0]
# apartments[:monthly_rent] = building[1]
# apartments[:sqft] = building[2]
# apartments[:num_beds] = building[3]
# apartments[:num_baths] = building[4]
# apartments[:renters] = building[5]

# apartments << building


binding.pry
